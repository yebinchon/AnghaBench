
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct callchain_root {int node; } ;
struct callchain_cursor {int dummy; } ;


 int merge_chain_branch (struct callchain_cursor*,int *,int *) ;

int callchain_merge(struct callchain_cursor *cursor,
      struct callchain_root *dst, struct callchain_root *src)
{
 return merge_chain_branch(cursor, &dst->node, &src->node);
}
