
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_reuseport {int num_socks; int rcu; struct sock** socks; scalar_t__ reuseport_id; } ;
struct sock {int sk_reuseport_cb; } ;


 int bpf_sk_reuseport_detach (struct sock*) ;
 int call_rcu (int *,int ) ;
 int lockdep_is_held (int *) ;
 int rcu_assign_pointer (int ,int *) ;
 struct sock_reuseport* rcu_dereference_protected (int ,int ) ;
 int reuseport_free_rcu ;
 int reuseport_lock ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void reuseport_detach_sock(struct sock *sk)
{
 struct sock_reuseport *reuse;
 int i;

 spin_lock_bh(&reuseport_lock);
 reuse = rcu_dereference_protected(sk->sk_reuseport_cb,
       lockdep_is_held(&reuseport_lock));





 if (reuse->reuseport_id)
  bpf_sk_reuseport_detach(sk);

 rcu_assign_pointer(sk->sk_reuseport_cb, ((void*)0));

 for (i = 0; i < reuse->num_socks; i++) {
  if (reuse->socks[i] == sk) {
   reuse->socks[i] = reuse->socks[reuse->num_socks - 1];
   reuse->num_socks--;
   if (reuse->num_socks == 0)
    call_rcu(&reuse->rcu, reuseport_free_rcu);
   break;
  }
 }
 spin_unlock_bh(&reuseport_lock);
}
