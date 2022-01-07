
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct TYPE_2__ {int m; int v; } ;
struct xfrm_policy {scalar_t__ if_id; int security; TYPE_1__ mark; int selector; int family; } ;
struct sock {int sk_mark; int * sk_policy; } ;
struct flowi {int flowi_secid; } ;


 struct xfrm_policy* ERR_PTR (int) ;
 int ESRCH ;
 struct xfrm_policy* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int security_xfrm_policy_lookup (int ,int ,int) ;
 int xfrm_pol_hold_rcu (struct xfrm_policy*) ;
 int xfrm_selector_match (int *,struct flowi const*,int ) ;

__attribute__((used)) static struct xfrm_policy *xfrm_sk_policy_lookup(const struct sock *sk, int dir,
       const struct flowi *fl,
       u16 family, u32 if_id)
{
 struct xfrm_policy *pol;

 rcu_read_lock();
 again:
 pol = rcu_dereference(sk->sk_policy[dir]);
 if (pol != ((void*)0)) {
  bool match;
  int err = 0;

  if (pol->family != family) {
   pol = ((void*)0);
   goto out;
  }

  match = xfrm_selector_match(&pol->selector, fl, family);
  if (match) {
   if ((sk->sk_mark & pol->mark.m) != pol->mark.v ||
       pol->if_id != if_id) {
    pol = ((void*)0);
    goto out;
   }
   err = security_xfrm_policy_lookup(pol->security,
            fl->flowi_secid,
            dir);
   if (!err) {
    if (!xfrm_pol_hold_rcu(pol))
     goto again;
   } else if (err == -ESRCH) {
    pol = ((void*)0);
   } else {
    pol = ERR_PTR(err);
   }
  } else
   pol = ((void*)0);
 }
out:
 rcu_read_unlock();
 return pol;
}
