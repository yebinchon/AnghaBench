
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int (* sk_data_ready ) (struct sock*) ;int sk_receive_queue; } ;
struct sk_buff {int truesize; } ;
struct mpoa_client {int mpoad_vcc; } ;
struct k_message {int type; } ;


 int ENOMEM ;
 int ENXIO ;
 int GFP_ATOMIC ;
 struct sk_buff* alloc_skb (int,int ) ;
 int atm_force_charge (int ,int ) ;
 int pr_info (char*,int ) ;
 struct sock* sk_atm (int ) ;
 int skb_copy_to_linear_data (struct sk_buff*,struct k_message*,int) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int stub1 (struct sock*) ;

int msg_to_mpoad(struct k_message *mesg, struct mpoa_client *mpc)
{
 struct sk_buff *skb;
 struct sock *sk;

 if (mpc == ((void*)0) || !mpc->mpoad_vcc) {
  pr_info("mesg %d to a non-existent mpoad\n", mesg->type);
  return -ENXIO;
 }

 skb = alloc_skb(sizeof(struct k_message), GFP_ATOMIC);
 if (skb == ((void*)0))
  return -ENOMEM;
 skb_put(skb, sizeof(struct k_message));
 skb_copy_to_linear_data(skb, mesg, sizeof(*mesg));
 atm_force_charge(mpc->mpoad_vcc, skb->truesize);

 sk = sk_atm(mpc->mpoad_vcc);
 skb_queue_tail(&sk->sk_receive_queue, skb);
 sk->sk_data_ready(sk);

 return 0;
}
