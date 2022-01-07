
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct lapb_frame {int dummy; } ;
struct lapb_cb {int state; } ;







 int kfree_skb (struct sk_buff*) ;
 scalar_t__ lapb_decode (struct lapb_cb*,struct sk_buff*,struct lapb_frame*) ;
 int lapb_kick (struct lapb_cb*) ;
 int lapb_state0_machine (struct lapb_cb*,struct sk_buff*,struct lapb_frame*) ;
 int lapb_state1_machine (struct lapb_cb*,struct sk_buff*,struct lapb_frame*) ;
 int lapb_state2_machine (struct lapb_cb*,struct sk_buff*,struct lapb_frame*) ;
 int lapb_state3_machine (struct lapb_cb*,struct sk_buff*,struct lapb_frame*) ;
 int lapb_state4_machine (struct lapb_cb*,struct sk_buff*,struct lapb_frame*) ;

void lapb_data_input(struct lapb_cb *lapb, struct sk_buff *skb)
{
 struct lapb_frame frame;

 if (lapb_decode(lapb, skb, &frame) < 0) {
  kfree_skb(skb);
  return;
 }

 switch (lapb->state) {
 case 132:
  lapb_state0_machine(lapb, skb, &frame); break;
 case 131:
  lapb_state1_machine(lapb, skb, &frame); break;
 case 130:
  lapb_state2_machine(lapb, skb, &frame); break;
 case 129:
  lapb_state3_machine(lapb, skb, &frame); break;
 case 128:
  lapb_state4_machine(lapb, skb, &frame); break;
 }

 lapb_kick(lapb);
}
