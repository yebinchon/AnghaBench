
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_reuseport {int num_socks; int max_socks; int rcu; struct sock** socks; } ;
struct sock {int sk_reuseport_cb; } ;


 int EBUSY ;
 int ENOMEM ;
 int call_rcu (int *,int ) ;
 int lockdep_is_held (int *) ;
 int rcu_access_pointer (int ) ;
 int rcu_assign_pointer (int ,struct sock_reuseport*) ;
 struct sock_reuseport* rcu_dereference_protected (int ,int ) ;
 int reuseport_alloc (struct sock*,int) ;
 int reuseport_free_rcu ;
 struct sock_reuseport* reuseport_grow (struct sock_reuseport*) ;
 int reuseport_lock ;
 int smp_wmb () ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int reuseport_add_sock(struct sock *sk, struct sock *sk2, bool bind_inany)
{
 struct sock_reuseport *old_reuse, *reuse;

 if (!rcu_access_pointer(sk2->sk_reuseport_cb)) {
  int err = reuseport_alloc(sk2, bind_inany);

  if (err)
   return err;
 }

 spin_lock_bh(&reuseport_lock);
 reuse = rcu_dereference_protected(sk2->sk_reuseport_cb,
       lockdep_is_held(&reuseport_lock));
 old_reuse = rcu_dereference_protected(sk->sk_reuseport_cb,
          lockdep_is_held(&reuseport_lock));
 if (old_reuse && old_reuse->num_socks != 1) {
  spin_unlock_bh(&reuseport_lock);
  return -EBUSY;
 }

 if (reuse->num_socks == reuse->max_socks) {
  reuse = reuseport_grow(reuse);
  if (!reuse) {
   spin_unlock_bh(&reuseport_lock);
   return -ENOMEM;
  }
 }

 reuse->socks[reuse->num_socks] = sk;

 smp_wmb();
 reuse->num_socks++;
 rcu_assign_pointer(sk->sk_reuseport_cb, reuse);

 spin_unlock_bh(&reuseport_lock);

 if (old_reuse)
  call_rcu(&old_reuse->rcu, reuseport_free_rcu);
 return 0;
}
