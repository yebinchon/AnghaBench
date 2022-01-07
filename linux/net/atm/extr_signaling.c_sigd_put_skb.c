
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int truesize; } ;
struct TYPE_3__ {int (* sk_data_ready ) (TYPE_1__*) ;int sk_receive_queue; } ;


 int atm_force_charge (int ,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int pr_debug (char*) ;
 int sigd ;
 TYPE_1__* sk_atm (int ) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static void sigd_put_skb(struct sk_buff *skb)
{
 if (!sigd) {
  pr_debug("atmsvc: no signaling daemon\n");
  kfree_skb(skb);
  return;
 }
 atm_force_charge(sigd, skb->truesize);
 skb_queue_tail(&sk_atm(sigd)->sk_receive_queue, skb);
 sk_atm(sigd)->sk_data_ready(sk_atm(sigd));
}
