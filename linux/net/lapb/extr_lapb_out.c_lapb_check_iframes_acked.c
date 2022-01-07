
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lapb_cb {unsigned short vs; unsigned short va; scalar_t__ n2count; } ;


 int lapb_frames_acked (struct lapb_cb*,unsigned short) ;
 int lapb_start_t1timer (struct lapb_cb*) ;
 int lapb_stop_t1timer (struct lapb_cb*) ;

void lapb_check_iframes_acked(struct lapb_cb *lapb, unsigned short nr)
{
 if (lapb->vs == nr) {
  lapb_frames_acked(lapb, nr);
  lapb_stop_t1timer(lapb);
  lapb->n2count = 0;
 } else if (lapb->va != nr) {
  lapb_frames_acked(lapb, nr);
  lapb_start_t1timer(lapb);
 }
}
