
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dev; } ;
struct net {int dummy; } ;
struct flowi {int dummy; } ;
struct dst_entry {int dummy; } ;


 scalar_t__ IS_ERR (struct dst_entry*) ;
 int LINUX_MIB_XFRMFWDHDRERROR ;
 int XFRM_INC_STATS (struct net*,int ) ;
 int XFRM_LOOKUP_QUEUE ;
 struct net* dev_net (int ) ;
 int skb_dst (struct sk_buff*) ;
 int skb_dst_force (struct sk_buff*) ;
 int skb_dst_set (struct sk_buff*,struct dst_entry*) ;
 scalar_t__ xfrm_decode_session (struct sk_buff*,struct flowi*,unsigned short) ;
 struct dst_entry* xfrm_lookup (struct net*,int ,struct flowi*,int *,int ) ;

int __xfrm_route_forward(struct sk_buff *skb, unsigned short family)
{
 struct net *net = dev_net(skb->dev);
 struct flowi fl;
 struct dst_entry *dst;
 int res = 1;

 if (xfrm_decode_session(skb, &fl, family) < 0) {
  XFRM_INC_STATS(net, LINUX_MIB_XFRMFWDHDRERROR);
  return 0;
 }

 skb_dst_force(skb);
 if (!skb_dst(skb)) {
  XFRM_INC_STATS(net, LINUX_MIB_XFRMFWDHDRERROR);
  return 0;
 }

 dst = xfrm_lookup(net, skb_dst(skb), &fl, ((void*)0), XFRM_LOOKUP_QUEUE);
 if (IS_ERR(dst)) {
  res = 0;
  dst = ((void*)0);
 }
 skb_dst_set(skb, dst);
 return res;
}
