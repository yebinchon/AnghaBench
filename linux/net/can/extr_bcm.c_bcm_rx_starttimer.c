
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_op {int flags; scalar_t__ kt_ival1; int timer; } ;


 int HRTIMER_MODE_REL_SOFT ;
 int RX_NO_AUTOTIMER ;
 int hrtimer_start (int *,scalar_t__,int ) ;

__attribute__((used)) static void bcm_rx_starttimer(struct bcm_op *op)
{
 if (op->flags & RX_NO_AUTOTIMER)
  return;

 if (op->kt_ival1)
  hrtimer_start(&op->timer, op->kt_ival1, HRTIMER_MODE_REL_SOFT);
}
