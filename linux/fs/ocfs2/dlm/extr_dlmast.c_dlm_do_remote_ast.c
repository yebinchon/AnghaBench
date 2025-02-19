
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dlm_lockstatus {int flags; } ;
struct TYPE_4__ {int name; int len; } ;
struct dlm_lock_resource {TYPE_2__ lockname; } ;
struct TYPE_3__ {scalar_t__ node; int cookie; } ;
struct dlm_lock {TYPE_1__ ml; struct dlm_lockstatus* lksb; } ;
struct dlm_ctxt {scalar_t__ node_num; int name; } ;


 int BUG_ON (int) ;
 int be64_to_cpu (int ) ;
 int dlm_get_lock_cookie_node (int ) ;
 int dlm_get_lock_cookie_seq (int ) ;
 int dlm_send_proxy_ast (struct dlm_ctxt*,struct dlm_lock_resource*,struct dlm_lock*,int) ;
 int dlm_update_lvb (struct dlm_ctxt*,struct dlm_lock_resource*,struct dlm_lock*) ;
 int mlog (int ,char*,int ,int ,int ,int ,int ) ;

int dlm_do_remote_ast(struct dlm_ctxt *dlm, struct dlm_lock_resource *res,
        struct dlm_lock *lock)
{
 int ret;
 struct dlm_lockstatus *lksb;
 int lksbflags;

 mlog(0, "%s: res %.*s, lock %u:%llu, Remote AST\n", dlm->name,
      res->lockname.len, res->lockname.name,
      dlm_get_lock_cookie_node(be64_to_cpu(lock->ml.cookie)),
      dlm_get_lock_cookie_seq(be64_to_cpu(lock->ml.cookie)));

 lksb = lock->lksb;
 BUG_ON(lock->ml.node == dlm->node_num);

 lksbflags = lksb->flags;
 dlm_update_lvb(dlm, res, lock);



 ret = dlm_send_proxy_ast(dlm, res, lock, lksbflags);
 return ret;
}
