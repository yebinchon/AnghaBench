
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_reuseport {int bind_inany; int num_socks; struct sock** socks; } ;
struct sock {int sk_reuseport_cb; } ;


 int ENOMEM ;
 int INIT_SOCKS ;
 struct sock_reuseport* __reuseport_alloc (int ) ;
 int lockdep_is_held (int *) ;
 int rcu_assign_pointer (int ,struct sock_reuseport*) ;
 struct sock_reuseport* rcu_dereference_protected (int ,int ) ;
 int reuseport_lock ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int reuseport_alloc(struct sock *sk, bool bind_inany)
{
 struct sock_reuseport *reuse;




 spin_lock_bh(&reuseport_lock);




 reuse = rcu_dereference_protected(sk->sk_reuseport_cb,
       lockdep_is_held(&reuseport_lock));
 if (reuse) {




  if (bind_inany)
   reuse->bind_inany = bind_inany;
  goto out;
 }

 reuse = __reuseport_alloc(INIT_SOCKS);
 if (!reuse) {
  spin_unlock_bh(&reuseport_lock);
  return -ENOMEM;
 }

 reuse->socks[0] = sk;
 reuse->num_socks = 1;
 reuse->bind_inany = bind_inany;
 rcu_assign_pointer(sk->sk_reuseport_cb, reuse);

out:
 spin_unlock_bh(&reuseport_lock);

 return 0;
}
