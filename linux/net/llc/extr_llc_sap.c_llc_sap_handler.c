
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct llc_sap {int dummy; } ;
struct llc_addr {int mac; int lsap; } ;


 scalar_t__ is_multicast_ether_addr (int ) ;
 int kfree_skb (struct sk_buff*) ;
 struct sock* llc_lookup_dgram (struct llc_sap*,struct llc_addr*) ;
 int llc_pdu_decode_da (struct sk_buff*,int ) ;
 int llc_pdu_decode_dsap (struct sk_buff*,int *) ;
 int llc_sap_mcast (struct llc_sap*,struct llc_addr*,struct sk_buff*) ;
 int llc_sap_rcv (struct llc_sap*,struct sk_buff*,struct sock*) ;
 int sock_put (struct sock*) ;

void llc_sap_handler(struct llc_sap *sap, struct sk_buff *skb)
{
 struct llc_addr laddr;

 llc_pdu_decode_da(skb, laddr.mac);
 llc_pdu_decode_dsap(skb, &laddr.lsap);

 if (is_multicast_ether_addr(laddr.mac)) {
  llc_sap_mcast(sap, &laddr, skb);
  kfree_skb(skb);
 } else {
  struct sock *sk = llc_lookup_dgram(sap, &laddr);
  if (sk) {
   llc_sap_rcv(sap, skb, sk);
   sock_put(sk);
  } else
   kfree_skb(skb);
 }
}
