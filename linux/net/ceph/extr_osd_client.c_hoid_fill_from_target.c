
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int pool; TYPE_3__* pool_ns; } ;
struct TYPE_6__ {int seed; } ;
struct TYPE_5__ {int name_len; int name; } ;
struct ceph_osd_request_target {TYPE_4__ target_oloc; TYPE_2__ pgid; TYPE_1__ target_oid; } ;
struct ceph_hobject_id {int is_max; int pool; scalar_t__ nspace_len; int * nspace; int hash; int snapid; int oid_len; int oid; scalar_t__ key_len; int * key; } ;
struct TYPE_7__ {scalar_t__ len; int * str; } ;


 int CEPH_NOSNAP ;
 int ceph_hoid_build_hash_cache (struct ceph_hobject_id*) ;

__attribute__((used)) static void hoid_fill_from_target(struct ceph_hobject_id *hoid,
      const struct ceph_osd_request_target *t)
{
 hoid->key = ((void*)0);
 hoid->key_len = 0;
 hoid->oid = t->target_oid.name;
 hoid->oid_len = t->target_oid.name_len;
 hoid->snapid = CEPH_NOSNAP;
 hoid->hash = t->pgid.seed;
 hoid->is_max = 0;
 if (t->target_oloc.pool_ns) {
  hoid->nspace = t->target_oloc.pool_ns->str;
  hoid->nspace_len = t->target_oloc.pool_ns->len;
 } else {
  hoid->nspace = ((void*)0);
  hoid->nspace_len = 0;
 }
 hoid->pool = t->target_oloc.pool;
 ceph_hoid_build_hash_cache(hoid);
}
