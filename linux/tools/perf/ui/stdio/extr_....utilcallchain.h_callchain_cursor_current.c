
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct callchain_cursor_node {int dummy; } ;
struct callchain_cursor {scalar_t__ pos; scalar_t__ nr; struct callchain_cursor_node* curr; } ;



__attribute__((used)) static inline struct callchain_cursor_node *
callchain_cursor_current(struct callchain_cursor *cursor)
{
 if (cursor->pos == cursor->nr)
  return ((void*)0);

 return cursor->curr;
}
