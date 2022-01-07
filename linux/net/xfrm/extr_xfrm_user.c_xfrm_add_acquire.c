
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xfrm_user_tmpl {int family; } ;
struct xfrm_user_acquire {int calgos; int ealgos; int aalgos; int sel; int saddr; int id; int policy; } ;
struct xfrm_tmpl {int calgos; int ealgos; int aalgos; int reqid; int mode; int id; } ;
struct TYPE_6__ {int family; int reqid; int mode; int saddr; } ;
struct TYPE_5__ {int v; int m; } ;
struct xfrm_state {TYPE_3__ props; int id; TYPE_2__ mark; int sel; } ;
struct TYPE_4__ {int v; int m; } ;
struct xfrm_policy {int xfrm_nr; struct xfrm_tmpl* xfrm_vec; TYPE_1__ mark; } ;
struct xfrm_mark {int v; int m; } ;
struct sk_buff {int sk; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;


 int ENOMEM ;
 size_t XFRMA_TMPL ;
 int kfree (struct xfrm_policy*) ;
 int km_query (struct xfrm_state*,struct xfrm_tmpl*,struct xfrm_policy*) ;
 int memcpy (int *,int *,int) ;
 struct xfrm_user_tmpl* nla_data (struct nlattr*) ;
 struct xfrm_user_acquire* nlmsg_data (struct nlmsghdr*) ;
 struct net* sock_net (int ) ;
 int verify_newpolicy_info (int *) ;
 int xfrm_mark_get (struct nlattr**,struct xfrm_mark*) ;
 struct xfrm_policy* xfrm_policy_construct (struct net*,int *,struct nlattr**,int*) ;
 struct xfrm_state* xfrm_state_alloc (struct net*) ;
 int xfrm_state_free (struct xfrm_state*) ;

__attribute__((used)) static int xfrm_add_acquire(struct sk_buff *skb, struct nlmsghdr *nlh,
  struct nlattr **attrs)
{
 struct net *net = sock_net(skb->sk);
 struct xfrm_policy *xp;
 struct xfrm_user_tmpl *ut;
 int i;
 struct nlattr *rt = attrs[XFRMA_TMPL];
 struct xfrm_mark mark;

 struct xfrm_user_acquire *ua = nlmsg_data(nlh);
 struct xfrm_state *x = xfrm_state_alloc(net);
 int err = -ENOMEM;

 if (!x)
  goto nomem;

 xfrm_mark_get(attrs, &mark);

 err = verify_newpolicy_info(&ua->policy);
 if (err)
  goto free_state;


 xp = xfrm_policy_construct(net, &ua->policy, attrs, &err);
 if (!xp)
  goto free_state;

 memcpy(&x->id, &ua->id, sizeof(ua->id));
 memcpy(&x->props.saddr, &ua->saddr, sizeof(ua->saddr));
 memcpy(&x->sel, &ua->sel, sizeof(ua->sel));
 xp->mark.m = x->mark.m = mark.m;
 xp->mark.v = x->mark.v = mark.v;
 ut = nla_data(rt);

 for (i = 0; i < xp->xfrm_nr; i++, ut++) {
  struct xfrm_tmpl *t = &xp->xfrm_vec[i];
  memcpy(&x->id, &t->id, sizeof(x->id));
  x->props.mode = t->mode;
  x->props.reqid = t->reqid;
  x->props.family = ut->family;
  t->aalgos = ua->aalgos;
  t->ealgos = ua->ealgos;
  t->calgos = ua->calgos;
  err = km_query(x, t, xp);

 }

 xfrm_state_free(x);
 kfree(xp);

 return 0;

free_state:
 xfrm_state_free(x);
nomem:
 return err;
}
