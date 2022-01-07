
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct xfrm_state_walk {int dummy; } ;
struct xfrm_dump_info {int nlmsg_flags; int nlmsg_seq; struct sk_buff* out_skb; int in_skb; } ;
struct xfrm_address_filter {int dummy; } ;
struct sk_buff {int len; int sk; } ;
struct nlattr {int dummy; } ;
struct netlink_callback {int* args; int extack; TYPE_1__* nlh; int skb; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int nlmsg_seq; } ;


 int BUILD_BUG_ON (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NLM_F_MULTI ;
 size_t XFRMA_ADDRESS_FILTER ;
 int XFRMA_MAX ;
 size_t XFRMA_PROTO ;
 int dump_one_state ;
 struct xfrm_address_filter* kmemdup (int ,int,int ) ;
 int nla_data (struct nlattr*) ;
 int nla_get_u8 (struct nlattr*) ;
 int nlmsg_parse_deprecated (TYPE_1__*,int ,struct nlattr**,int ,int ,int ) ;
 struct net* sock_net (int ) ;
 int xfrm_state_walk (struct net*,struct xfrm_state_walk*,int ,struct xfrm_dump_info*) ;
 int xfrm_state_walk_init (struct xfrm_state_walk*,int ,struct xfrm_address_filter*) ;
 int xfrma_policy ;

__attribute__((used)) static int xfrm_dump_sa(struct sk_buff *skb, struct netlink_callback *cb)
{
 struct net *net = sock_net(skb->sk);
 struct xfrm_state_walk *walk = (struct xfrm_state_walk *) &cb->args[1];
 struct xfrm_dump_info info;

 BUILD_BUG_ON(sizeof(struct xfrm_state_walk) >
       sizeof(cb->args) - sizeof(cb->args[0]));

 info.in_skb = cb->skb;
 info.out_skb = skb;
 info.nlmsg_seq = cb->nlh->nlmsg_seq;
 info.nlmsg_flags = NLM_F_MULTI;

 if (!cb->args[0]) {
  struct nlattr *attrs[XFRMA_MAX+1];
  struct xfrm_address_filter *filter = ((void*)0);
  u8 proto = 0;
  int err;

  err = nlmsg_parse_deprecated(cb->nlh, 0, attrs, XFRMA_MAX,
          xfrma_policy, cb->extack);
  if (err < 0)
   return err;

  if (attrs[XFRMA_ADDRESS_FILTER]) {
   filter = kmemdup(nla_data(attrs[XFRMA_ADDRESS_FILTER]),
      sizeof(*filter), GFP_KERNEL);
   if (filter == ((void*)0))
    return -ENOMEM;
  }

  if (attrs[XFRMA_PROTO])
   proto = nla_get_u8(attrs[XFRMA_PROTO]);

  xfrm_state_walk_init(walk, proto, filter);
  cb->args[0] = 1;
 }

 (void) xfrm_state_walk(net, walk, dump_one_state, &info);

 return skb->len;
}
