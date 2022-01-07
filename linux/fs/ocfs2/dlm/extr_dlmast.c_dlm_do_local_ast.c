
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int name; int len; } ;
struct dlm_lock_resource {TYPE_2__ lockname; } ;
struct TYPE_3__ {scalar_t__ node; int cookie; } ;
struct dlm_lock {int astdata; TYPE_1__ ml; int (* ast ) (int ) ;} ;
struct dlm_ctxt {scalar_t__ node_num; int name; } ;
typedef int (* dlm_astlockfunc_t ) (int ) ;


 int BUG_ON (int) ;
 int be64_to_cpu (int ) ;
 int dlm_get_lock_cookie_node (int ) ;
 int dlm_get_lock_cookie_seq (int ) ;
 int dlm_update_lvb (struct dlm_ctxt*,struct dlm_lock_resource*,struct dlm_lock*) ;
 int mlog (int ,char*,int ,int ,int ,int ,int ) ;
 int stub1 (int ) ;

void dlm_do_local_ast(struct dlm_ctxt *dlm, struct dlm_lock_resource *res,
        struct dlm_lock *lock)
{
 dlm_astlockfunc_t *fn;

 mlog(0, "%s: res %.*s, lock %u:%llu, Local AST\n", dlm->name,
      res->lockname.len, res->lockname.name,
      dlm_get_lock_cookie_node(be64_to_cpu(lock->ml.cookie)),
      dlm_get_lock_cookie_seq(be64_to_cpu(lock->ml.cookie)));

 fn = lock->ast;
 BUG_ON(lock->ml.node != dlm->node_num);

 dlm_update_lvb(dlm, res, lock);
 (*fn)(lock->astdata);
}
