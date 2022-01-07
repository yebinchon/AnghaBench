
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfrm_tmpl {int dummy; } ;
struct xfrm_policy {int xfrm_nr; int xfrm_vec; int family; int type; int index; int flags; int action; int if_id; int mark; int curlft; int lft; int security; int selector; } ;
struct TYPE_2__ {int xfrm_policy_lock; } ;
struct net {TYPE_1__ xfrm; } ;


 int GFP_ATOMIC ;
 int kfree (struct xfrm_policy*) ;
 int memcpy (int ,int ,int) ;
 scalar_t__ security_xfrm_policy_clone (int ,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int xfrm_pol_put (struct xfrm_policy*) ;
 struct xfrm_policy* xfrm_policy_alloc (struct net*,int ) ;
 int xfrm_sk_policy_link (struct xfrm_policy*,int) ;
 struct net* xp_net (struct xfrm_policy const*) ;

__attribute__((used)) static struct xfrm_policy *clone_policy(const struct xfrm_policy *old, int dir)
{
 struct xfrm_policy *newp = xfrm_policy_alloc(xp_net(old), GFP_ATOMIC);
 struct net *net = xp_net(old);

 if (newp) {
  newp->selector = old->selector;
  if (security_xfrm_policy_clone(old->security,
            &newp->security)) {
   kfree(newp);
   return ((void*)0);
  }
  newp->lft = old->lft;
  newp->curlft = old->curlft;
  newp->mark = old->mark;
  newp->if_id = old->if_id;
  newp->action = old->action;
  newp->flags = old->flags;
  newp->xfrm_nr = old->xfrm_nr;
  newp->index = old->index;
  newp->type = old->type;
  newp->family = old->family;
  memcpy(newp->xfrm_vec, old->xfrm_vec,
         newp->xfrm_nr*sizeof(struct xfrm_tmpl));
  spin_lock_bh(&net->xfrm.xfrm_policy_lock);
  xfrm_sk_policy_link(newp, dir);
  spin_unlock_bh(&net->xfrm.xfrm_policy_lock);
  xfrm_pol_put(newp);
 }
 return newp;
}
