
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct klist_node {int n_klist; } ;


 unsigned long KNODE_DEAD ;
 int WARN_ON (int ) ;
 int knode_dead (struct klist_node*) ;

__attribute__((used)) static void knode_kill(struct klist_node *knode)
{

 WARN_ON(knode_dead(knode));
 *(unsigned long *)&knode->n_klist |= KNODE_DEAD;
}
