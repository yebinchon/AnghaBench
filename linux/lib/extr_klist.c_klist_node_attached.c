
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct klist_node {int * n_klist; } ;



int klist_node_attached(struct klist_node *n)
{
 return (n->n_klist != ((void*)0));
}
