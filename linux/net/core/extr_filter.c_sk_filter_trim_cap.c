
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_filter; } ;
struct sk_filter {int prog; } ;
struct sk_buff {struct sock* sk; } ;


 int BPF_CGROUP_RUN_PROG_INET_INGRESS (struct sock*,struct sk_buff*) ;
 int ENOMEM ;
 int EPERM ;
 int LINUX_MIB_PFMEMALLOCDROP ;
 int NET_INC_STATS (int ,int ) ;
 int SOCK_MEMALLOC ;
 unsigned int bpf_prog_run_save_cb (int ,struct sk_buff*) ;
 int max (unsigned int,unsigned int) ;
 int pskb_trim (struct sk_buff*,int ) ;
 struct sk_filter* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int security_sock_rcv_skb (struct sock*,struct sk_buff*) ;
 scalar_t__ skb_pfmemalloc (struct sk_buff*) ;
 int sock_flag (struct sock*,int ) ;
 int sock_net (struct sock*) ;

int sk_filter_trim_cap(struct sock *sk, struct sk_buff *skb, unsigned int cap)
{
 int err;
 struct sk_filter *filter;






 if (skb_pfmemalloc(skb) && !sock_flag(sk, SOCK_MEMALLOC)) {
  NET_INC_STATS(sock_net(sk), LINUX_MIB_PFMEMALLOCDROP);
  return -ENOMEM;
 }
 err = BPF_CGROUP_RUN_PROG_INET_INGRESS(sk, skb);
 if (err)
  return err;

 err = security_sock_rcv_skb(sk, skb);
 if (err)
  return err;

 rcu_read_lock();
 filter = rcu_dereference(sk->sk_filter);
 if (filter) {
  struct sock *save_sk = skb->sk;
  unsigned int pkt_len;

  skb->sk = sk;
  pkt_len = bpf_prog_run_save_cb(filter->prog, skb);
  skb->sk = save_sk;
  err = pkt_len ? pskb_trim(skb, max(cap, pkt_len)) : -EPERM;
 }
 rcu_read_unlock();

 return err;
}
