
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int pkt_type; int protocol; } ;


 int ETH_P_DNA_RT ;
 int PACKET_OUTGOING ;
 int htons (int ) ;
 struct sk_buff* sock_alloc_send_skb (struct sock*,unsigned long,int,int*) ;

__attribute__((used)) static inline struct sk_buff *dn_alloc_send_pskb(struct sock *sk,
         unsigned long datalen, int noblock,
         int *errcode)
{
 struct sk_buff *skb = sock_alloc_send_skb(sk, datalen,
         noblock, errcode);
 if (skb) {
  skb->protocol = htons(ETH_P_DNA_RT);
  skb->pkt_type = PACKET_OUTGOING;
 }
 return skb;
}
