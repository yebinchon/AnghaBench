
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int ptracer_cred; struct task_struct* parent; int ptraced; int ptrace_entry; } ;
struct cred {int dummy; } ;


 int BUG_ON (int) ;
 int get_cred (struct cred const*) ;
 int list_add (int *,int *) ;
 int list_empty (int *) ;

void __ptrace_link(struct task_struct *child, struct task_struct *new_parent,
     const struct cred *ptracer_cred)
{
 BUG_ON(!list_empty(&child->ptrace_entry));
 list_add(&child->ptrace_entry, &new_parent->ptraced);
 child->parent = new_parent;
 child->ptracer_cred = get_cred(ptracer_cred);
}
