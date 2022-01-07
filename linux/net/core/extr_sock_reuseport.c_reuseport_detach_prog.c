
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_reuseport {int prog; } ;
struct sock {int sk_reuseport_cb; scalar_t__ sk_reuseport; } ;
struct bpf_prog {int dummy; } ;


 int EINVAL ;
 int ENOENT ;
 int lockdep_is_held (int *) ;
 int rcu_access_pointer (int ) ;
 struct sock_reuseport* rcu_dereference_protected (int ,int ) ;
 int rcu_swap_protected (int ,struct bpf_prog*,int ) ;
 int reuseport_lock ;
 int sk_reuseport_prog_free (struct bpf_prog*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int reuseport_detach_prog(struct sock *sk)
{
 struct sock_reuseport *reuse;
 struct bpf_prog *old_prog;

 if (!rcu_access_pointer(sk->sk_reuseport_cb))
  return sk->sk_reuseport ? -ENOENT : -EINVAL;

 old_prog = ((void*)0);
 spin_lock_bh(&reuseport_lock);
 reuse = rcu_dereference_protected(sk->sk_reuseport_cb,
       lockdep_is_held(&reuseport_lock));
 rcu_swap_protected(reuse->prog, old_prog,
      lockdep_is_held(&reuseport_lock));
 spin_unlock_bh(&reuseport_lock);

 if (!old_prog)
  return -ENOENT;

 sk_reuseport_prog_free(old_prog);
 return 0;
}
