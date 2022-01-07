
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rb_root {int dummy; } ;
struct ceph_pg {int dummy; } ;
struct ceph_pg_mapping {struct ceph_pg pgid; } ;
typedef struct ceph_pg_mapping* (* decode_mapping_fn_t ) (void**,void*,int) ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct ceph_pg_mapping*) ;
 int PTR_ERR (struct ceph_pg_mapping*) ;
 int WARN_ON (int) ;
 int ceph_decode_32_safe (void**,void*,int ,int ) ;
 int ceph_decode_pgid (void**,void*,struct ceph_pg*) ;
 int e_inval ;
 int erase_pg_mapping (struct rb_root*,struct ceph_pg_mapping*) ;
 int free_pg_mapping (struct ceph_pg_mapping*) ;
 int insert_pg_mapping (struct rb_root*,struct ceph_pg_mapping*) ;
 struct ceph_pg_mapping* lookup_pg_mapping (struct rb_root*,struct ceph_pg*) ;

__attribute__((used)) static int decode_pg_mapping(void **p, void *end, struct rb_root *mapping_root,
        decode_mapping_fn_t fn, bool incremental)
{
 u32 n;

 WARN_ON(!incremental && !fn);

 ceph_decode_32_safe(p, end, n, e_inval);
 while (n--) {
  struct ceph_pg_mapping *pg;
  struct ceph_pg pgid;
  int ret;

  ret = ceph_decode_pgid(p, end, &pgid);
  if (ret)
   return ret;

  pg = lookup_pg_mapping(mapping_root, &pgid);
  if (pg) {
   WARN_ON(!incremental);
   erase_pg_mapping(mapping_root, pg);
   free_pg_mapping(pg);
  }

  if (fn) {
   pg = fn(p, end, incremental);
   if (IS_ERR(pg))
    return PTR_ERR(pg);

   if (pg) {
    pg->pgid = pgid;
    insert_pg_mapping(mapping_root, pg);
   }
  }
 }

 return 0;

e_inval:
 return -EINVAL;
}
