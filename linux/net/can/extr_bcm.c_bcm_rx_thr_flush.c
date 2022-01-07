
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_op {int nframes; } ;


 scalar_t__ bcm_rx_do_flush (struct bcm_op*,unsigned int) ;

__attribute__((used)) static int bcm_rx_thr_flush(struct bcm_op *op)
{
 int updated = 0;

 if (op->nframes > 1) {
  unsigned int i;


  for (i = 1; i < op->nframes; i++)
   updated += bcm_rx_do_flush(op, i);

 } else {

  updated += bcm_rx_do_flush(op, 0);
 }

 return updated;
}
