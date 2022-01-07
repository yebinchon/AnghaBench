
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_lock {int dummy; } ;
struct dlm_ctxt {int ast_lock; } ;


 int BUG_ON (int) ;
 int __dlm_queue_ast (struct dlm_ctxt*,struct dlm_lock*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void dlm_queue_ast(struct dlm_ctxt *dlm, struct dlm_lock *lock)
{
 BUG_ON(!dlm);
 BUG_ON(!lock);

 spin_lock(&dlm->ast_lock);
 __dlm_queue_ast(dlm, lock);
 spin_unlock(&dlm->ast_lock);
}
