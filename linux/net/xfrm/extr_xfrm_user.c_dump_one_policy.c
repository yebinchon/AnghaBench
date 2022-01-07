
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfrm_userpolicy_info {int dummy; } ;
struct xfrm_policy {int if_id; int mark; int type; } ;
struct xfrm_dump_info {int nlmsg_flags; int nlmsg_seq; struct sk_buff* out_skb; struct sk_buff* in_skb; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct TYPE_2__ {int portid; } ;


 int EMSGSIZE ;
 TYPE_1__ NETLINK_CB (struct sk_buff*) ;
 int XFRM_MSG_NEWPOLICY ;
 int copy_to_user_policy (struct xfrm_policy*,struct xfrm_userpolicy_info*,int) ;
 int copy_to_user_policy_type (int ,struct sk_buff*) ;
 int copy_to_user_sec_ctx (struct xfrm_policy*,struct sk_buff*) ;
 int copy_to_user_tmpl (struct xfrm_policy*,struct sk_buff*) ;
 int nlmsg_cancel (struct sk_buff*,struct nlmsghdr*) ;
 struct xfrm_userpolicy_info* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int ,int,int ) ;
 int xfrm_if_id_put (struct sk_buff*,int ) ;
 int xfrm_mark_put (struct sk_buff*,int *) ;

__attribute__((used)) static int dump_one_policy(struct xfrm_policy *xp, int dir, int count, void *ptr)
{
 struct xfrm_dump_info *sp = ptr;
 struct xfrm_userpolicy_info *p;
 struct sk_buff *in_skb = sp->in_skb;
 struct sk_buff *skb = sp->out_skb;
 struct nlmsghdr *nlh;
 int err;

 nlh = nlmsg_put(skb, NETLINK_CB(in_skb).portid, sp->nlmsg_seq,
   XFRM_MSG_NEWPOLICY, sizeof(*p), sp->nlmsg_flags);
 if (nlh == ((void*)0))
  return -EMSGSIZE;

 p = nlmsg_data(nlh);
 copy_to_user_policy(xp, p, dir);
 err = copy_to_user_tmpl(xp, skb);
 if (!err)
  err = copy_to_user_sec_ctx(xp, skb);
 if (!err)
  err = copy_to_user_policy_type(xp->type, skb);
 if (!err)
  err = xfrm_mark_put(skb, &xp->mark);
 if (!err)
  err = xfrm_if_id_put(skb, xp->if_id);
 if (err) {
  nlmsg_cancel(skb, nlh);
  return err;
 }
 nlmsg_end(skb, nlh);
 return 0;
}
