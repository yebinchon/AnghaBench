
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {struct kcov* kcov; } ;
struct kcov {int lock; int mode; struct task_struct* t; } ;


 int KCOV_MODE_INIT ;
 scalar_t__ WARN_ON (int) ;
 int kcov_put (struct kcov*) ;
 int kcov_task_init (struct task_struct*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void kcov_task_exit(struct task_struct *t)
{
 struct kcov *kcov;

 kcov = t->kcov;
 if (kcov == ((void*)0))
  return;
 spin_lock(&kcov->lock);
 if (WARN_ON(kcov->t != t)) {
  spin_unlock(&kcov->lock);
  return;
 }

 kcov_task_init(t);
 kcov->t = ((void*)0);
 kcov->mode = KCOV_MODE_INIT;
 spin_unlock(&kcov->lock);
 kcov_put(kcov);
}
