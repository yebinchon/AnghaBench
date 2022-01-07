
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_reuseport {int prog; } ;
struct sock {int sk_reuseport_cb; scalar_t__ sk_reuseport; } ;
struct bpf_prog {int dummy; } ;


 int EINVAL ;
 int lockdep_is_held (int *) ;
 int rcu_access_pointer (int ) ;
 int rcu_assign_pointer (int ,struct bpf_prog*) ;
 void* rcu_dereference_protected (int ,int ) ;
 int reuseport_alloc (struct sock*,int) ;
 int reuseport_lock ;
 int sk_reuseport_prog_free (struct bpf_prog*) ;
 scalar_t__ sk_unhashed (struct sock*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int reuseport_attach_prog(struct sock *sk, struct bpf_prog *prog)
{
 struct sock_reuseport *reuse;
 struct bpf_prog *old_prog;

 if (sk_unhashed(sk) && sk->sk_reuseport) {
  int err = reuseport_alloc(sk, 0);

  if (err)
   return err;
 } else if (!rcu_access_pointer(sk->sk_reuseport_cb)) {

  return -EINVAL;
 }

 spin_lock_bh(&reuseport_lock);
 reuse = rcu_dereference_protected(sk->sk_reuseport_cb,
       lockdep_is_held(&reuseport_lock));
 old_prog = rcu_dereference_protected(reuse->prog,
          lockdep_is_held(&reuseport_lock));
 rcu_assign_pointer(reuse->prog, prog);
 spin_unlock_bh(&reuseport_lock);

 sk_reuseport_prog_free(old_prog);
 return 0;
}
