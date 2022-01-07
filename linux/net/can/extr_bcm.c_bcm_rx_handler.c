
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {unsigned int len; TYPE_1__* dev; int tstamp; scalar_t__ data; } ;
struct canfd_frame {scalar_t__ can_id; } ;
struct bcm_op {scalar_t__ can_id; unsigned int cfsiz; int flags; int nframes; struct canfd_frame const* frames; int last_frames; int frames_abs; int rx_ifindex; int rx_stamp; int timer; } ;
struct TYPE_2__ {int ifindex; } ;


 int RX_FILTER_ID ;
 int RX_RTR_FRAME ;
 int bcm_can_tx (struct bcm_op*) ;
 int bcm_rx_cmp_to_index (struct bcm_op*,unsigned int,struct canfd_frame const*) ;
 int bcm_rx_starttimer (struct bcm_op*) ;
 int bcm_rx_update_and_send (struct bcm_op*,int ,struct canfd_frame const*) ;
 int get_u64 (struct canfd_frame const*,int ) ;
 int hrtimer_cancel (int *) ;

__attribute__((used)) static void bcm_rx_handler(struct sk_buff *skb, void *data)
{
 struct bcm_op *op = (struct bcm_op *)data;
 const struct canfd_frame *rxframe = (struct canfd_frame *)skb->data;
 unsigned int i;

 if (op->can_id != rxframe->can_id)
  return;


 if (skb->len != op->cfsiz)
  return;


 hrtimer_cancel(&op->timer);


 op->rx_stamp = skb->tstamp;

 op->rx_ifindex = skb->dev->ifindex;

 op->frames_abs++;

 if (op->flags & RX_RTR_FRAME) {

  bcm_can_tx(op);
  return;
 }

 if (op->flags & RX_FILTER_ID) {

  bcm_rx_update_and_send(op, op->last_frames, rxframe);
  goto rx_starttimer;
 }

 if (op->nframes == 1) {

  bcm_rx_cmp_to_index(op, 0, rxframe);
  goto rx_starttimer;
 }

 if (op->nframes > 1) {
  for (i = 1; i < op->nframes; i++) {
   if ((get_u64(op->frames, 0) & get_u64(rxframe, 0)) ==
       (get_u64(op->frames, 0) &
        get_u64(op->frames + op->cfsiz * i, 0))) {
    bcm_rx_cmp_to_index(op, i, rxframe);
    break;
   }
  }
 }

rx_starttimer:
 bcm_rx_starttimer(op);
}
