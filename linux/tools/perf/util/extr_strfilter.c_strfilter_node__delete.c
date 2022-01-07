
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strfilter_node {struct strfilter_node* r; struct strfilter_node* l; int * p; } ;


 int free (struct strfilter_node*) ;
 int is_operator (int ) ;
 int zfree (char**) ;

__attribute__((used)) static void strfilter_node__delete(struct strfilter_node *node)
{
 if (node) {
  if (node->p && !is_operator(*node->p))
   zfree((char **)&node->p);
  strfilter_node__delete(node->l);
  strfilter_node__delete(node->r);
  free(node);
 }
}
