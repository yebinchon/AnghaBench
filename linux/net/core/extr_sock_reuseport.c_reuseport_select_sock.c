
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct sock_reuseport {int num_socks; struct sock** socks; int prog; } ;
struct sock {scalar_t__ sk_state; int sk_reuseport_cb; } ;
struct sk_buff {int dummy; } ;
struct bpf_prog {scalar_t__ type; } ;


 scalar_t__ BPF_PROG_TYPE_SK_REUSEPORT ;
 int READ_ONCE (int) ;
 scalar_t__ TCP_ESTABLISHED ;
 struct sock* bpf_run_sk_reuseport (struct sock_reuseport*,struct sock*,struct bpf_prog*,struct sk_buff*,int ) ;
 scalar_t__ likely (int ) ;
 void* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int reciprocal_scale (int ,int ) ;
 struct sock* run_bpf_filter (struct sock_reuseport*,int ,struct bpf_prog*,struct sk_buff*,int) ;
 int smp_rmb () ;

struct sock *reuseport_select_sock(struct sock *sk,
       u32 hash,
       struct sk_buff *skb,
       int hdr_len)
{
 struct sock_reuseport *reuse;
 struct bpf_prog *prog;
 struct sock *sk2 = ((void*)0);
 u16 socks;

 rcu_read_lock();
 reuse = rcu_dereference(sk->sk_reuseport_cb);


 if (!reuse)
  goto out;

 prog = rcu_dereference(reuse->prog);
 socks = READ_ONCE(reuse->num_socks);
 if (likely(socks)) {

  smp_rmb();

  if (!prog || !skb)
   goto select_by_hash;

  if (prog->type == BPF_PROG_TYPE_SK_REUSEPORT)
   sk2 = bpf_run_sk_reuseport(reuse, sk, prog, skb, hash);
  else
   sk2 = run_bpf_filter(reuse, socks, prog, skb, hdr_len);

select_by_hash:

  if (!sk2) {
   int i, j;

   i = j = reciprocal_scale(hash, socks);
   while (reuse->socks[i]->sk_state == TCP_ESTABLISHED) {
    i++;
    if (i >= reuse->num_socks)
     i = 0;
    if (i == j)
     goto out;
   }
   sk2 = reuse->socks[i];
  }
 }

out:
 rcu_read_unlock();
 return sk2;
}
