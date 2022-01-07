
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_op {int timer; } ;


 int HRTIMER_MODE_ABS_SOFT ;
 scalar_t__ bcm_tx_set_expiry (struct bcm_op*,int *) ;
 int hrtimer_start_expires (int *,int ) ;

__attribute__((used)) static void bcm_tx_start_timer(struct bcm_op *op)
{
 if (bcm_tx_set_expiry(op, &op->timer))
  hrtimer_start_expires(&op->timer, HRTIMER_MODE_ABS_SOFT);
}
