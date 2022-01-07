
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cond_node {struct cond_node* next; } ;


 int cond_node_destroy (struct cond_node*) ;

__attribute__((used)) static void cond_list_destroy(struct cond_node *list)
{
 struct cond_node *next, *cur;

 if (list == ((void*)0))
  return;

 for (cur = list; cur; cur = next) {
  next = cur->next;
  cond_node_destroy(cur);
 }
}
