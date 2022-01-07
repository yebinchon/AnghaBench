
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct klist_node {int n_ref; } ;
struct klist_iter {struct klist_node* i_cur; struct klist* i_klist; } ;
struct klist {int dummy; } ;


 scalar_t__ kref_get_unless_zero (int *) ;

void klist_iter_init_node(struct klist *k, struct klist_iter *i,
     struct klist_node *n)
{
 i->i_klist = k;
 i->i_cur = ((void*)0);
 if (n && kref_get_unless_zero(&n->n_ref))
  i->i_cur = n;
}
