
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_allocation; } ;
struct sk_buff {int dummy; } ;
struct nsp_conn_ack_msg {int msgflg; int dstaddr; } ;
struct dn_scp {int addrrem; } ;


 struct dn_scp* DN_SK (struct sock*) ;
 struct sk_buff* dn_alloc_skb (struct sock*,int,int ) ;
 int dn_nsp_send (struct sk_buff*) ;
 struct nsp_conn_ack_msg* skb_put (struct sk_buff*,int) ;

void dn_send_conn_ack (struct sock *sk)
{
 struct dn_scp *scp = DN_SK(sk);
 struct sk_buff *skb = ((void*)0);
 struct nsp_conn_ack_msg *msg;

 if ((skb = dn_alloc_skb(sk, 3, sk->sk_allocation)) == ((void*)0))
  return;

 msg = skb_put(skb, 3);
 msg->msgflg = 0x24;
 msg->dstaddr = scp->addrrem;

 dn_nsp_send(skb);
}
