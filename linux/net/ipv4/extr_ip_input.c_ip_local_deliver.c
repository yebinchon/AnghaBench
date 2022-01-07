
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dev; } ;
struct net {int dummy; } ;


 int IP_DEFRAG_LOCAL_DELIVER ;
 int NFPROTO_IPV4 ;
 int NF_HOOK (int ,int ,struct net*,int *,struct sk_buff*,int ,int *,int ) ;
 int NF_INET_LOCAL_IN ;
 struct net* dev_net (int ) ;
 scalar_t__ ip_defrag (struct net*,struct sk_buff*,int ) ;
 int ip_hdr (struct sk_buff*) ;
 scalar_t__ ip_is_fragment (int ) ;
 int ip_local_deliver_finish ;

int ip_local_deliver(struct sk_buff *skb)
{



 struct net *net = dev_net(skb->dev);

 if (ip_is_fragment(ip_hdr(skb))) {
  if (ip_defrag(net, skb, IP_DEFRAG_LOCAL_DELIVER))
   return 0;
 }

 return NF_HOOK(NFPROTO_IPV4, NF_INET_LOCAL_IN,
         net, ((void*)0), skb, skb->dev, ((void*)0),
         ip_local_deliver_finish);
}
