
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct match_workbuf {unsigned int pos; unsigned int* history; unsigned int len; unsigned int size; } ;



__attribute__((used)) static bool is_loop(struct match_workbuf *wb, unsigned int state,
      unsigned int *adjust)
{
 unsigned int pos = wb->pos;
 unsigned int i;

 if (wb->history[pos] < state)
  return 0;

 for (i = 0; i <= wb->len; i++) {
  if (wb->history[pos] == state) {
   *adjust = i;
   return 1;
  }
  if (pos == 0)
   pos = wb->size;
  pos--;
 }

 *adjust = i;
 return 1;
}
