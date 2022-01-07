
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct callchain_cursor {scalar_t__ pos; int nr; int curr; int first; } ;



__attribute__((used)) static inline void callchain_cursor_snapshot(struct callchain_cursor *dest,
          struct callchain_cursor *src)
{
 *dest = *src;

 dest->first = src->curr;
 dest->nr -= src->pos;
}
