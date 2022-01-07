
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hist_entry_iter {int hide_unresolved; } ;
struct callchain_cursor_node {int dummy; } ;
struct addr_location {int dummy; } ;


 int callchain_cursor ;
 struct callchain_cursor_node* callchain_cursor_current (int *) ;
 int fill_callchain_info (struct addr_location*,struct callchain_cursor_node*,int ) ;

__attribute__((used)) static int
iter_next_cumulative_entry(struct hist_entry_iter *iter,
      struct addr_location *al)
{
 struct callchain_cursor_node *node;

 node = callchain_cursor_current(&callchain_cursor);
 if (node == ((void*)0))
  return 0;

 return fill_callchain_info(al, node, iter->hide_unresolved);
}
