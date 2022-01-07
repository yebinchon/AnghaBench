
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {scalar_t__ priority; struct notifier_block* next; } ;


 int WARN_ONCE (int,char*) ;
 int rcu_assign_pointer (struct notifier_block*,struct notifier_block*) ;

__attribute__((used)) static int notifier_chain_register(struct notifier_block **nl,
  struct notifier_block *n)
{
 while ((*nl) != ((void*)0)) {
  WARN_ONCE(((*nl) == n), "double register detected");
  if (n->priority > (*nl)->priority)
   break;
  nl = &((*nl)->next);
 }
 n->next = *nl;
 rcu_assign_pointer(*nl, n);
 return 0;
}
