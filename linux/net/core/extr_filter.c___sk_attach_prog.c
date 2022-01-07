
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_filter; } ;
struct sk_filter {int refcnt; struct bpf_prog* prog; } ;
struct bpf_prog {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int __sk_filter_charge (struct sock*,struct sk_filter*) ;
 int kfree (struct sk_filter*) ;
 struct sk_filter* kmalloc (int,int ) ;
 int lockdep_sock_is_held (struct sock*) ;
 int rcu_assign_pointer (int ,struct sk_filter*) ;
 struct sk_filter* rcu_dereference_protected (int ,int ) ;
 int refcount_set (int *,int) ;
 int sk_filter_uncharge (struct sock*,struct sk_filter*) ;

__attribute__((used)) static int __sk_attach_prog(struct bpf_prog *prog, struct sock *sk)
{
 struct sk_filter *fp, *old_fp;

 fp = kmalloc(sizeof(*fp), GFP_KERNEL);
 if (!fp)
  return -ENOMEM;

 fp->prog = prog;

 if (!__sk_filter_charge(sk, fp)) {
  kfree(fp);
  return -ENOMEM;
 }
 refcount_set(&fp->refcnt, 1);

 old_fp = rcu_dereference_protected(sk->sk_filter,
        lockdep_sock_is_held(sk));
 rcu_assign_pointer(sk->sk_filter, fp);

 if (old_fp)
  sk_filter_uncharge(sk, old_fp);

 return 0;
}
