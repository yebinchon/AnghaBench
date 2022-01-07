
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int ignore_df; } ;
struct net {int dummy; } ;
struct iphdr {int frag_off; } ;
struct TYPE_2__ {unsigned int frag_max_size; } ;


 int EMSGSIZE ;
 int ICMP_DEST_UNREACH ;
 int ICMP_FRAG_NEEDED ;
 TYPE_1__* IPCB (struct sk_buff*) ;
 int IPSTATS_MIB_FRAGFAILS ;
 int IP_DF ;
 int IP_INC_STATS (struct net*,int ) ;
 int htonl (unsigned int) ;
 int htons (int ) ;
 int icmp_send (struct sk_buff*,int ,int ,int ) ;
 int ip_do_fragment (struct net*,struct sock*,struct sk_buff*,int (*) (struct net*,struct sock*,struct sk_buff*)) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ip_fragment(struct net *net, struct sock *sk, struct sk_buff *skb,
         unsigned int mtu,
         int (*output)(struct net *, struct sock *, struct sk_buff *))
{
 struct iphdr *iph = ip_hdr(skb);

 if ((iph->frag_off & htons(IP_DF)) == 0)
  return ip_do_fragment(net, sk, skb, output);

 if (unlikely(!skb->ignore_df ||
       (IPCB(skb)->frag_max_size &&
        IPCB(skb)->frag_max_size > mtu))) {
  IP_INC_STATS(net, IPSTATS_MIB_FRAGFAILS);
  icmp_send(skb, ICMP_DEST_UNREACH, ICMP_FRAG_NEEDED,
     htonl(mtu));
  kfree_skb(skb);
  return -EMSGSIZE;
 }

 return ip_do_fragment(net, sk, skb, output);
}
