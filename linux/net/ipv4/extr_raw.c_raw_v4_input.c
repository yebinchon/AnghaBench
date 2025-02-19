
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {TYPE_2__* dev; } ;
struct net {int dummy; } ;
struct iphdr {int daddr; int saddr; int protocol; } ;
struct hlist_head {int dummy; } ;
struct TYPE_4__ {int ifindex; } ;
struct TYPE_3__ {int lock; struct hlist_head* ht; } ;


 int GFP_ATOMIC ;
 int IPPROTO_ICMP ;
 struct sock* __raw_v4_lookup (struct net*,int ,int ,int ,int ,int,int) ;
 int __sk_head (struct hlist_head*) ;
 struct net* dev_net (TYPE_2__*) ;
 scalar_t__ hlist_empty (struct hlist_head*) ;
 int icmp_filter (struct sock*,struct sk_buff*) ;
 int inet_iif (struct sk_buff*) ;
 int inet_sdif (struct sk_buff*) ;
 scalar_t__ ip_mc_sf_allow (struct sock*,int ,int ,int ,int) ;
 int raw_rcv (struct sock*,struct sk_buff*) ;
 TYPE_1__ raw_v4_hashinfo ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int sk_next (struct sock*) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;

__attribute__((used)) static int raw_v4_input(struct sk_buff *skb, const struct iphdr *iph, int hash)
{
 int sdif = inet_sdif(skb);
 int dif = inet_iif(skb);
 struct sock *sk;
 struct hlist_head *head;
 int delivered = 0;
 struct net *net;

 read_lock(&raw_v4_hashinfo.lock);
 head = &raw_v4_hashinfo.ht[hash];
 if (hlist_empty(head))
  goto out;

 net = dev_net(skb->dev);
 sk = __raw_v4_lookup(net, __sk_head(head), iph->protocol,
        iph->saddr, iph->daddr, dif, sdif);

 while (sk) {
  delivered = 1;
  if ((iph->protocol != IPPROTO_ICMP || !icmp_filter(sk, skb)) &&
      ip_mc_sf_allow(sk, iph->daddr, iph->saddr,
       skb->dev->ifindex, sdif)) {
   struct sk_buff *clone = skb_clone(skb, GFP_ATOMIC);


   if (clone)
    raw_rcv(sk, clone);
  }
  sk = __raw_v4_lookup(net, sk_next(sk), iph->protocol,
         iph->saddr, iph->daddr,
         dif, sdif);
 }
out:
 read_unlock(&raw_v4_hashinfo.lock);
 return delivered;
}
