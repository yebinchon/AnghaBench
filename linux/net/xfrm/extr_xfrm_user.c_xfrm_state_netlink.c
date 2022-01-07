
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xfrm_state {int dummy; } ;
struct xfrm_dump_info {scalar_t__ nlmsg_flags; int nlmsg_seq; struct sk_buff* out_skb; struct sk_buff* in_skb; } ;
struct sk_buff {int dummy; } ;


 int ENOMEM ;
 struct sk_buff* ERR_PTR (int) ;
 int GFP_ATOMIC ;
 int NLMSG_DEFAULT_SIZE ;
 int dump_one_state (struct xfrm_state*,int ,struct xfrm_dump_info*) ;
 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;

__attribute__((used)) static struct sk_buff *xfrm_state_netlink(struct sk_buff *in_skb,
       struct xfrm_state *x, u32 seq)
{
 struct xfrm_dump_info info;
 struct sk_buff *skb;
 int err;

 skb = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_ATOMIC);
 if (!skb)
  return ERR_PTR(-ENOMEM);

 info.in_skb = in_skb;
 info.out_skb = skb;
 info.nlmsg_seq = seq;
 info.nlmsg_flags = 0;

 err = dump_one_state(x, 0, &info);
 if (err) {
  kfree_skb(skb);
  return ERR_PTR(err);
 }

 return skb;
}
