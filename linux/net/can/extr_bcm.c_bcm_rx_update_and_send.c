
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct canfd_frame {int flags; } ;
struct bcm_op {scalar_t__ kt_lastmsg; int kt_ival2; int thrtimer; int cfsiz; } ;


 int HRTIMER_MODE_ABS_SOFT ;
 int RX_RECV ;
 int RX_THR ;
 int bcm_rx_changed (struct bcm_op*,struct canfd_frame*) ;
 scalar_t__ hrtimer_active (int *) ;
 int hrtimer_start (int *,int ,int ) ;
 int ktime_add (scalar_t__,int ) ;
 scalar_t__ ktime_get () ;
 scalar_t__ ktime_to_us (int ) ;
 scalar_t__ ktime_us_delta (scalar_t__,scalar_t__) ;
 int memcpy (struct canfd_frame*,struct canfd_frame const*,int ) ;

__attribute__((used)) static void bcm_rx_update_and_send(struct bcm_op *op,
       struct canfd_frame *lastdata,
       const struct canfd_frame *rxdata)
{
 memcpy(lastdata, rxdata, op->cfsiz);


 lastdata->flags |= (RX_RECV|RX_THR);


 if (!op->kt_ival2) {

  bcm_rx_changed(op, lastdata);
  return;
 }


 if (hrtimer_active(&op->thrtimer))
  return;


 if (!op->kt_lastmsg)
  goto rx_changed_settime;


 if (ktime_us_delta(ktime_get(), op->kt_lastmsg) <
     ktime_to_us(op->kt_ival2)) {

  hrtimer_start(&op->thrtimer,
         ktime_add(op->kt_lastmsg, op->kt_ival2),
         HRTIMER_MODE_ABS_SOFT);
  return;
 }


rx_changed_settime:
 bcm_rx_changed(op, lastdata);
 op->kt_lastmsg = ktime_get();
}
