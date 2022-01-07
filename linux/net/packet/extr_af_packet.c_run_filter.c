
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_filter; } ;
struct sk_filter {int prog; } ;
struct sk_buff {int dummy; } ;


 unsigned int bpf_prog_run_clear_cb (int ,struct sk_buff*) ;
 struct sk_filter* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static unsigned int run_filter(struct sk_buff *skb,
          const struct sock *sk,
          unsigned int res)
{
 struct sk_filter *filter;

 rcu_read_lock();
 filter = rcu_dereference(sk->sk_filter);
 if (filter != ((void*)0))
  res = bpf_prog_run_clear_cb(filter->prog, skb);
 rcu_read_unlock();

 return res;
}
