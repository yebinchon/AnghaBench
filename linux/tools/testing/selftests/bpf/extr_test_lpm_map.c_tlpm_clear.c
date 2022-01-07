
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlpm_node {struct tlpm_node* next; } ;


 int free (struct tlpm_node*) ;

__attribute__((used)) static void tlpm_clear(struct tlpm_node *list)
{
 struct tlpm_node *node;



 while ((node = list)) {
  list = list->next;
  free(node);
 }
}
