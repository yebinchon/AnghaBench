
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; int len; } ;
struct dlm_lock_resource {TYPE_1__ lockname; } ;
struct TYPE_4__ {scalar_t__ node; int cookie; } ;
struct dlm_lock {int astdata; TYPE_2__ ml; int (* bast ) (int ,int) ;} ;
struct dlm_ctxt {scalar_t__ node_num; int name; } ;
typedef int (* dlm_bastlockfunc_t ) (int ,int) ;


 int BUG_ON (int) ;
 int be64_to_cpu (int ) ;
 int dlm_get_lock_cookie_node (int ) ;
 int dlm_get_lock_cookie_seq (int ) ;
 int mlog (int ,char*,int ,int ,int ,int ,int ,int) ;
 int stub1 (int ,int) ;

void dlm_do_local_bast(struct dlm_ctxt *dlm, struct dlm_lock_resource *res,
         struct dlm_lock *lock, int blocked_type)
{
 dlm_bastlockfunc_t *fn = lock->bast;

 BUG_ON(lock->ml.node != dlm->node_num);

 mlog(0, "%s: res %.*s, lock %u:%llu, Local BAST, blocked %d\n",
      dlm->name, res->lockname.len, res->lockname.name,
      dlm_get_lock_cookie_node(be64_to_cpu(lock->ml.cookie)),
      dlm_get_lock_cookie_seq(be64_to_cpu(lock->ml.cookie)),
      blocked_type);

 (*fn)(lock->astdata, blocked_type);
}
