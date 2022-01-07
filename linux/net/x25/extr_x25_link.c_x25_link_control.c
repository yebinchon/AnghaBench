
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x25_neigh {scalar_t__ state; int queue; } ;
struct sk_buff {int * data; } ;



 scalar_t__ X25_LINK_STATE_3 ;


 int X25_STD_MIN_LEN ;
 int pr_warn (char*,unsigned short,...) ;
 int pskb_may_pull (struct sk_buff*,int ) ;
 struct sk_buff* skb_dequeue (int *) ;
 int x25_send_frame (struct sk_buff*,struct x25_neigh*) ;
 int x25_stop_t20timer (struct x25_neigh*) ;
 int x25_t20timer_pending (struct x25_neigh*) ;
 int x25_transmit_restart_confirmation (struct x25_neigh*) ;

void x25_link_control(struct sk_buff *skb, struct x25_neigh *nb,
        unsigned short frametype)
{
 struct sk_buff *skbn;
 int confirm;

 switch (frametype) {
 case 128:
  confirm = !x25_t20timer_pending(nb);
  x25_stop_t20timer(nb);
  nb->state = X25_LINK_STATE_3;
  if (confirm)
   x25_transmit_restart_confirmation(nb);
  break;

 case 129:
  x25_stop_t20timer(nb);
  nb->state = X25_LINK_STATE_3;
  break;

 case 130:
  if (!pskb_may_pull(skb, X25_STD_MIN_LEN + 4))
   break;

  pr_warn("diagnostic #%d - %02X %02X %02X\n",
         skb->data[3], skb->data[4],
         skb->data[5], skb->data[6]);
  break;

 default:
  pr_warn("received unknown %02X with LCI 000\n",
         frametype);
  break;
 }

 if (nb->state == X25_LINK_STATE_3)
  while ((skbn = skb_dequeue(&nb->queue)) != ((void*)0))
   x25_send_frame(skbn, nb);
}
