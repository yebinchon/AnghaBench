
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strfilter_node {int* p; struct strfilter_node* r; struct strfilter_node* l; } ;


 int strglobmatch (char const*,int*) ;

__attribute__((used)) static bool strfilter_node__compare(struct strfilter_node *node,
        const char *str)
{
 if (!node || !node->p)
  return 0;

 switch (*node->p) {
 case '|':
  return strfilter_node__compare(node->l, str) ||
   strfilter_node__compare(node->r, str);
 case '&':
  return strfilter_node__compare(node->l, str) &&
   strfilter_node__compare(node->r, str);
 case '!':
  return !strfilter_node__compare(node->r, str);
 default:
  return strglobmatch(str, node->p);
 }
}
