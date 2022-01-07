
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct callchain_cursor_node {int srcline; int branch_from; int iter_cycles; int nr_loop_iter; int branch_flags; int branch; int sym; int map; int ip; } ;
struct callchain_cursor {int dummy; } ;


 int callchain_cursor_advance (struct callchain_cursor*) ;
 int callchain_cursor_append (struct callchain_cursor*,int ,int ,int ,int ,int *,int ,int ,int ,int ) ;
 int callchain_cursor_commit (struct callchain_cursor*) ;
 struct callchain_cursor_node* callchain_cursor_current (struct callchain_cursor*) ;
 int callchain_cursor_reset (struct callchain_cursor*) ;

int callchain_cursor__copy(struct callchain_cursor *dst,
      struct callchain_cursor *src)
{
 int rc = 0;

 callchain_cursor_reset(dst);
 callchain_cursor_commit(src);

 while (1) {
  struct callchain_cursor_node *node;

  node = callchain_cursor_current(src);
  if (node == ((void*)0))
   break;

  rc = callchain_cursor_append(dst, node->ip, node->map, node->sym,
          node->branch, &node->branch_flags,
          node->nr_loop_iter,
          node->iter_cycles,
          node->branch_from, node->srcline);
  if (rc)
   break;

  callchain_cursor_advance(src);
 }

 return rc;
}
