
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int add_time; } ;
struct xfrm_policy {scalar_t__ type; int index; TYPE_1__ curlft; } ;
struct sock {int * sk_policy; } ;
struct TYPE_4__ {int xfrm_policy_lock; } ;
struct net {TYPE_2__ xfrm; } ;


 int EINVAL ;
 scalar_t__ XFRM_POLICY_MAX ;
 scalar_t__ XFRM_POLICY_TYPE_MAIN ;
 int ktime_get_real_seconds () ;
 int lockdep_is_held (int *) ;
 int rcu_assign_pointer (int ,struct xfrm_policy*) ;
 struct xfrm_policy* rcu_dereference_protected (int ,int ) ;
 struct net* sock_net (struct sock*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int xfrm_gen_index (struct net*,scalar_t__,int ) ;
 int xfrm_policy_kill (struct xfrm_policy*) ;
 int xfrm_policy_requeue (struct xfrm_policy*,struct xfrm_policy*) ;
 int xfrm_sk_policy_link (struct xfrm_policy*,int) ;
 int xfrm_sk_policy_unlink (struct xfrm_policy*,int) ;

int xfrm_sk_policy_insert(struct sock *sk, int dir, struct xfrm_policy *pol)
{
 struct net *net = sock_net(sk);
 struct xfrm_policy *old_pol;






 spin_lock_bh(&net->xfrm.xfrm_policy_lock);
 old_pol = rcu_dereference_protected(sk->sk_policy[dir],
    lockdep_is_held(&net->xfrm.xfrm_policy_lock));
 if (pol) {
  pol->curlft.add_time = ktime_get_real_seconds();
  pol->index = xfrm_gen_index(net, XFRM_POLICY_MAX+dir, 0);
  xfrm_sk_policy_link(pol, dir);
 }
 rcu_assign_pointer(sk->sk_policy[dir], pol);
 if (old_pol) {
  if (pol)
   xfrm_policy_requeue(old_pol, pol);




  xfrm_sk_policy_unlink(old_pol, dir);
 }
 spin_unlock_bh(&net->xfrm.xfrm_policy_lock);

 if (old_pol) {
  xfrm_policy_kill(old_pol);
 }
 return 0;
}
