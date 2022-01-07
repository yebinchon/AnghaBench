
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {void* protocol; int len; } ;
struct net {int dummy; } ;
struct iphdr {void* tot_len; } ;
struct TYPE_2__ {int dev; } ;


 int ETH_P_IP ;
 int NFPROTO_IPV4 ;
 int NF_INET_LOCAL_OUT ;
 int dst_output ;
 void* htons (int ) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int ip_send_check (struct iphdr*) ;
 struct sk_buff* l3mdev_ip_out (struct sock*,struct sk_buff*) ;
 int nf_hook (int ,int ,struct net*,struct sock*,struct sk_buff*,int *,int ,int ) ;
 TYPE_1__* skb_dst (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

int __ip_local_out(struct net *net, struct sock *sk, struct sk_buff *skb)
{
 struct iphdr *iph = ip_hdr(skb);

 iph->tot_len = htons(skb->len);
 ip_send_check(iph);




 skb = l3mdev_ip_out(sk, skb);
 if (unlikely(!skb))
  return 0;

 skb->protocol = htons(ETH_P_IP);

 return nf_hook(NFPROTO_IPV4, NF_INET_LOCAL_OUT,
         net, sk, skb, ((void*)0), skb_dst(skb)->dev,
         dst_output);
}
