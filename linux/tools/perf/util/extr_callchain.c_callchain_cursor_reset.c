
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct callchain_cursor_node {int map; struct callchain_cursor_node* next; } ;
struct callchain_cursor {struct callchain_cursor_node* first; struct callchain_cursor_node** last; scalar_t__ nr; } ;


 int map__zput (int ) ;

void callchain_cursor_reset(struct callchain_cursor *cursor)
{
 struct callchain_cursor_node *node;

 cursor->nr = 0;
 cursor->last = &cursor->first;

 for (node = cursor->first; node != ((void*)0); node = node->next)
  map__zput(node->map);
}
