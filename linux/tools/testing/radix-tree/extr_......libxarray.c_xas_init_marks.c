
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xa_mark_t ;
struct xa_state {int xa; } ;


 scalar_t__ XA_FREE_MARK ;
 scalar_t__ XA_MARK_MAX ;
 int mark_inc (scalar_t__) ;
 scalar_t__ xa_track_free (int ) ;
 int xas_clear_mark (struct xa_state const*,scalar_t__) ;
 int xas_set_mark (struct xa_state const*,scalar_t__) ;

void xas_init_marks(const struct xa_state *xas)
{
 xa_mark_t mark = 0;

 for (;;) {
  if (xa_track_free(xas->xa) && mark == XA_FREE_MARK)
   xas_set_mark(xas, mark);
  else
   xas_clear_mark(xas, mark);
  if (mark == XA_MARK_MAX)
   break;
  mark_inc(mark);
 }
}
