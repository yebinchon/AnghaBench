
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symbol {int dummy; } ;
struct inline_node {int val; } ;
struct inline_list {char* srcline; int list; struct symbol* symbol; } ;
struct TYPE_2__ {scalar_t__ order; } ;


 scalar_t__ ORDER_CALLEE ;
 TYPE_1__ callchain_param ;
 int list_add (int *,int *) ;
 int list_add_tail (int *,int *) ;
 struct inline_list* zalloc (int) ;

__attribute__((used)) static int inline_list__append(struct symbol *symbol, char *srcline,
          struct inline_node *node)
{
 struct inline_list *ilist;

 ilist = zalloc(sizeof(*ilist));
 if (ilist == ((void*)0))
  return -1;

 ilist->symbol = symbol;
 ilist->srcline = srcline;

 if (callchain_param.order == ORDER_CALLEE)
  list_add_tail(&ilist->list, &node->val);
 else
  list_add(&ilist->list, &node->val);

 return 0;
}
