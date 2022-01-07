
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct canfd_frame {int flags; } ;
struct bcm_op {unsigned int cfsiz; struct canfd_frame* last_frames; } ;


 int RX_THR ;
 int bcm_rx_changed (struct bcm_op*,struct canfd_frame*) ;

__attribute__((used)) static inline int bcm_rx_do_flush(struct bcm_op *op, unsigned int index)
{
 struct canfd_frame *lcf = op->last_frames + op->cfsiz * index;

 if ((op->last_frames) && (lcf->flags & RX_THR)) {
  bcm_rx_changed(op, lcf);
  return 1;
 }
 return 0;
}
