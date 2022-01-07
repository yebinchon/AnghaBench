
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {scalar_t__ priority; struct notifier_block* next; } ;


 int rcu_assign_pointer (struct notifier_block*,struct notifier_block*) ;

__attribute__((used)) static int notifier_chain_cond_register(struct notifier_block **nl,
  struct notifier_block *n)
{
 while ((*nl) != ((void*)0)) {
  if ((*nl) == n)
   return 0;
  if (n->priority > (*nl)->priority)
   break;
  nl = &((*nl)->next);
 }
 n->next = *nl;
 rcu_assign_pointer(*nl, n);
 return 0;
}
