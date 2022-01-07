
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;


 int GFP_ATOMIC ;
 struct sk_buff* dn_alloc_skb (struct sock*,int,int ) ;
 int dn_mk_ack_header (struct sock*,struct sk_buff*,int,int,int ) ;
 int dn_nsp_send (struct sk_buff*) ;
 int skb_reserve (struct sk_buff*,int) ;

void dn_nsp_send_data_ack(struct sock *sk)
{
 struct sk_buff *skb = ((void*)0);

 if ((skb = dn_alloc_skb(sk, 9, GFP_ATOMIC)) == ((void*)0))
  return;

 skb_reserve(skb, 9);
 dn_mk_ack_header(sk, skb, 0x04, 9, 0);
 dn_nsp_send(skb);
}
