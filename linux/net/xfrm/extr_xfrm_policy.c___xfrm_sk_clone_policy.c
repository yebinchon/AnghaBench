
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_policy {int dummy; } ;
struct sock {int * sk_policy; } ;


 int ENOMEM ;
 struct xfrm_policy* clone_policy (struct xfrm_policy const*,int) ;
 int rcu_assign_pointer (int ,struct xfrm_policy*) ;
 struct xfrm_policy* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ unlikely (int) ;

int __xfrm_sk_clone_policy(struct sock *sk, const struct sock *osk)
{
 const struct xfrm_policy *p;
 struct xfrm_policy *np;
 int i, ret = 0;

 rcu_read_lock();
 for (i = 0; i < 2; i++) {
  p = rcu_dereference(osk->sk_policy[i]);
  if (p) {
   np = clone_policy(p, i);
   if (unlikely(!np)) {
    ret = -ENOMEM;
    break;
   }
   rcu_assign_pointer(sk->sk_policy[i], np);
  }
 }
 rcu_read_unlock();
 return ret;
}
