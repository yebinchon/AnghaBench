
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sock {int (* sk_data_ready ) (struct sock*) ;int sk_receive_queue; } ;
struct sk_buff {int truesize; scalar_t__ data; } ;
struct TYPE_4__ {int eg_info; } ;
struct k_message {TYPE_1__ content; int type; } ;
struct atm_vcc {int dummy; } ;
struct TYPE_5__ {int ctrl_info; } ;
typedef TYPE_2__ eg_cache_entry ;


 int DATA_PLANE_PURGE ;
 int GFP_ATOMIC ;
 struct sk_buff* alloc_skb (int,int ) ;
 int atm_force_charge (struct atm_vcc*,int ) ;
 int dprintk (char*) ;
 int memset (scalar_t__,int ,int) ;
 int pr_info (char*) ;
 struct sock* sk_atm (struct atm_vcc*) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int stub1 (struct sock*) ;

__attribute__((used)) static void purge_egress_shortcut(struct atm_vcc *vcc, eg_cache_entry *entry)
{
 struct sock *sk;
 struct k_message *purge_msg;
 struct sk_buff *skb;

 dprintk("entering\n");
 if (vcc == ((void*)0)) {
  pr_info("vcc == NULL\n");
  return;
 }

 skb = alloc_skb(sizeof(struct k_message), GFP_ATOMIC);
 if (skb == ((void*)0)) {
  pr_info("out of memory\n");
  return;
 }

 skb_put(skb, sizeof(struct k_message));
 memset(skb->data, 0, sizeof(struct k_message));
 purge_msg = (struct k_message *)skb->data;
 purge_msg->type = DATA_PLANE_PURGE;
 if (entry != ((void*)0))
  purge_msg->content.eg_info = entry->ctrl_info;

 atm_force_charge(vcc, skb->truesize);

 sk = sk_atm(vcc);
 skb_queue_tail(&sk->sk_receive_queue, skb);
 sk->sk_data_ready(sk);
 dprintk("exiting\n");
}
