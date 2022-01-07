
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_userpolicy_info {int dir; } ;
struct xfrm_policy {int security; } ;
struct sk_buff {int sk; } ;
struct nlmsghdr {scalar_t__ nlmsg_type; int nlmsg_pid; int nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct km_event {scalar_t__ event; int portid; int seq; } ;


 scalar_t__ XFRM_MSG_NEWPOLICY ;
 int kfree (struct xfrm_policy*) ;
 int km_policy_notify (struct xfrm_policy*,int ,struct km_event*) ;
 struct xfrm_userpolicy_info* nlmsg_data (struct nlmsghdr*) ;
 int security_xfrm_policy_free (int ) ;
 struct net* sock_net (int ) ;
 int verify_newpolicy_info (struct xfrm_userpolicy_info*) ;
 int verify_sec_ctx_len (struct nlattr**) ;
 int xfrm_audit_policy_add (struct xfrm_policy*,int,int) ;
 int xfrm_pol_put (struct xfrm_policy*) ;
 struct xfrm_policy* xfrm_policy_construct (struct net*,struct xfrm_userpolicy_info*,struct nlattr**,int*) ;
 int xfrm_policy_insert (int ,struct xfrm_policy*,int) ;

__attribute__((used)) static int xfrm_add_policy(struct sk_buff *skb, struct nlmsghdr *nlh,
  struct nlattr **attrs)
{
 struct net *net = sock_net(skb->sk);
 struct xfrm_userpolicy_info *p = nlmsg_data(nlh);
 struct xfrm_policy *xp;
 struct km_event c;
 int err;
 int excl;

 err = verify_newpolicy_info(p);
 if (err)
  return err;
 err = verify_sec_ctx_len(attrs);
 if (err)
  return err;

 xp = xfrm_policy_construct(net, p, attrs, &err);
 if (!xp)
  return err;





 excl = nlh->nlmsg_type == XFRM_MSG_NEWPOLICY;
 err = xfrm_policy_insert(p->dir, xp, excl);
 xfrm_audit_policy_add(xp, err ? 0 : 1, 1);

 if (err) {
  security_xfrm_policy_free(xp->security);
  kfree(xp);
  return err;
 }

 c.event = nlh->nlmsg_type;
 c.seq = nlh->nlmsg_seq;
 c.portid = nlh->nlmsg_pid;
 km_policy_notify(xp, p->dir, &c);

 xfrm_pol_put(xp);

 return 0;
}
