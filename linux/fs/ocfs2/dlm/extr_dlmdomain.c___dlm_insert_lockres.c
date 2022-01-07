
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hlist_head {int dummy; } ;
struct TYPE_2__ {int name; int len; int hash; } ;
struct dlm_lock_resource {TYPE_1__ lockname; int hash_node; } ;
struct dlm_ctxt {int name; int spinlock; } ;


 int assert_spin_locked (int *) ;
 int dlm_lockres_get (struct dlm_lock_resource*) ;
 struct hlist_head* dlm_lockres_hash (struct dlm_ctxt*,int ) ;
 int hlist_add_head (int *,struct hlist_head*) ;
 int mlog (int ,char*,int ,int ,int ) ;

void __dlm_insert_lockres(struct dlm_ctxt *dlm, struct dlm_lock_resource *res)
{
 struct hlist_head *bucket;

 assert_spin_locked(&dlm->spinlock);

 bucket = dlm_lockres_hash(dlm, res->lockname.hash);


 dlm_lockres_get(res);

 hlist_add_head(&res->hash_node, bucket);

 mlog(0, "%s: Hash res %.*s\n", dlm->name, res->lockname.len,
      res->lockname.name);
}
