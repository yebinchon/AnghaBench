
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;


 int GFP_ATOMIC ;
 int __GFP_NOWARN ;
 struct sk_buff* alloc_skb (unsigned int,int) ;
 unsigned int max (unsigned int,unsigned int) ;

__attribute__((used)) static struct sk_buff *
nfulnl_alloc_skb(struct net *net, u32 peer_portid, unsigned int inst_size,
   unsigned int pkt_size)
{
 struct sk_buff *skb;
 unsigned int n;




 n = max(inst_size, pkt_size);
 skb = alloc_skb(n, GFP_ATOMIC | __GFP_NOWARN);
 if (!skb) {
  if (n > pkt_size) {



   skb = alloc_skb(pkt_size, GFP_ATOMIC);
  }
 }

 return skb;
}
