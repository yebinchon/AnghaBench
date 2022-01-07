
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; int len; } ;
struct dlm_lock_resource {int hash_node; TYPE_1__ lockname; } ;
struct dlm_ctxt {int name; } ;


 int dlm_lockres_put (struct dlm_lock_resource*) ;
 int hlist_del_init (int *) ;
 scalar_t__ hlist_unhashed (int *) ;
 int mlog (int ,char*,int ,int ,int ) ;

void __dlm_unhash_lockres(struct dlm_ctxt *dlm, struct dlm_lock_resource *res)
{
 if (hlist_unhashed(&res->hash_node))
  return;

 mlog(0, "%s: Unhash res %.*s\n", dlm->name, res->lockname.len,
      res->lockname.name);
 hlist_del_init(&res->hash_node);
 dlm_lockres_put(res);
}
