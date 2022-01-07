
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {struct nsproxy* nsproxy; } ;
struct nsproxy {int count; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int free_nsproxy (struct nsproxy*) ;
 int might_sleep () ;
 int task_lock (struct task_struct*) ;
 int task_unlock (struct task_struct*) ;

void switch_task_namespaces(struct task_struct *p, struct nsproxy *new)
{
 struct nsproxy *ns;

 might_sleep();

 task_lock(p);
 ns = p->nsproxy;
 p->nsproxy = new;
 task_unlock(p);

 if (ns && atomic_dec_and_test(&ns->count))
  free_nsproxy(ns);
}
