
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfrm_usersa_info {int dummy; } ;
struct xfrm_state {int dummy; } ;
struct xfrm_dump_info {int nlmsg_flags; int nlmsg_seq; struct sk_buff* out_skb; struct sk_buff* in_skb; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct TYPE_2__ {int portid; } ;


 int EMSGSIZE ;
 TYPE_1__ NETLINK_CB (struct sk_buff*) ;
 int XFRM_MSG_NEWSA ;
 int copy_to_user_state_extra (struct xfrm_state*,struct xfrm_usersa_info*,struct sk_buff*) ;
 int nlmsg_cancel (struct sk_buff*,struct nlmsghdr*) ;
 struct xfrm_usersa_info* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int ,int,int ) ;

__attribute__((used)) static int dump_one_state(struct xfrm_state *x, int count, void *ptr)
{
 struct xfrm_dump_info *sp = ptr;
 struct sk_buff *in_skb = sp->in_skb;
 struct sk_buff *skb = sp->out_skb;
 struct xfrm_usersa_info *p;
 struct nlmsghdr *nlh;
 int err;

 nlh = nlmsg_put(skb, NETLINK_CB(in_skb).portid, sp->nlmsg_seq,
   XFRM_MSG_NEWSA, sizeof(*p), sp->nlmsg_flags);
 if (nlh == ((void*)0))
  return -EMSGSIZE;

 p = nlmsg_data(nlh);

 err = copy_to_user_state_extra(x, p, skb);
 if (err) {
  nlmsg_cancel(skb, nlh);
  return err;
 }
 nlmsg_end(skb, nlh);
 return 0;
}
