
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int proto; int spi; int daddr; } ;
struct xfrm_usersa_info {int family; TYPE_1__ id; } ;
struct xfrm_user_expire {scalar_t__ hard; struct xfrm_usersa_info state; } ;
struct TYPE_4__ {scalar_t__ state; } ;
struct xfrm_state {int lock; TYPE_2__ km; } ;
struct xfrm_mark {int dummy; } ;
struct sk_buff {int sk; } ;
struct nlmsghdr {int nlmsg_pid; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;


 int EINVAL ;
 int ENOENT ;
 scalar_t__ XFRM_STATE_VALID ;
 int __xfrm_state_delete (struct xfrm_state*) ;
 int km_state_expired (struct xfrm_state*,scalar_t__,int ) ;
 struct xfrm_user_expire* nlmsg_data (struct nlmsghdr*) ;
 struct net* sock_net (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int xfrm_audit_state_delete (struct xfrm_state*,int,int) ;
 int xfrm_mark_get (struct nlattr**,struct xfrm_mark*) ;
 struct xfrm_state* xfrm_state_lookup (struct net*,int ,int *,int ,int ,int ) ;
 int xfrm_state_put (struct xfrm_state*) ;

__attribute__((used)) static int xfrm_add_sa_expire(struct sk_buff *skb, struct nlmsghdr *nlh,
  struct nlattr **attrs)
{
 struct net *net = sock_net(skb->sk);
 struct xfrm_state *x;
 int err;
 struct xfrm_user_expire *ue = nlmsg_data(nlh);
 struct xfrm_usersa_info *p = &ue->state;
 struct xfrm_mark m;
 u32 mark = xfrm_mark_get(attrs, &m);

 x = xfrm_state_lookup(net, mark, &p->id.daddr, p->id.spi, p->id.proto, p->family);

 err = -ENOENT;
 if (x == ((void*)0))
  return err;

 spin_lock_bh(&x->lock);
 err = -EINVAL;
 if (x->km.state != XFRM_STATE_VALID)
  goto out;
 km_state_expired(x, ue->hard, nlh->nlmsg_pid);

 if (ue->hard) {
  __xfrm_state_delete(x);
  xfrm_audit_state_delete(x, 1, 1);
 }
 err = 0;
out:
 spin_unlock_bh(&x->lock);
 xfrm_state_put(x);
 return err;
}
