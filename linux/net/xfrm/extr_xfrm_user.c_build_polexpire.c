
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfrm_user_polexpire {int hard; int pol; } ;
struct xfrm_policy {int if_id; int mark; int type; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct TYPE_2__ {int hard; } ;
struct km_event {int portid; TYPE_1__ data; } ;


 int EMSGSIZE ;
 int XFRM_MSG_POLEXPIRE ;
 int copy_to_user_policy (struct xfrm_policy*,int *,int) ;
 int copy_to_user_policy_type (int ,struct sk_buff*) ;
 int copy_to_user_sec_ctx (struct xfrm_policy*,struct sk_buff*) ;
 int copy_to_user_tmpl (struct xfrm_policy*,struct sk_buff*) ;
 int nlmsg_cancel (struct sk_buff*,struct nlmsghdr*) ;
 struct xfrm_user_polexpire* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int ,int,int ) ;
 int xfrm_if_id_put (struct sk_buff*,int ) ;
 int xfrm_mark_put (struct sk_buff*,int *) ;

__attribute__((used)) static int build_polexpire(struct sk_buff *skb, struct xfrm_policy *xp,
      int dir, const struct km_event *c)
{
 struct xfrm_user_polexpire *upe;
 int hard = c->data.hard;
 struct nlmsghdr *nlh;
 int err;

 nlh = nlmsg_put(skb, c->portid, 0, XFRM_MSG_POLEXPIRE, sizeof(*upe), 0);
 if (nlh == ((void*)0))
  return -EMSGSIZE;

 upe = nlmsg_data(nlh);
 copy_to_user_policy(xp, &upe->pol, dir);
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
 upe->hard = !!hard;

 nlmsg_end(skb, nlh);
 return 0;
}
