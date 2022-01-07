
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct tcp_fastopen_cookie {scalar_t__ len; int exp; } ;
struct tcp_fastopen_metrics {scalar_t__ try_exp; scalar_t__ syn_loss; int last_syn_loss; struct tcp_fastopen_cookie cookie; scalar_t__ mss; } ;
struct tcp_metrics_block {struct tcp_fastopen_metrics tcpm_fastopen; } ;
struct sock {int dummy; } ;
struct dst_entry {int dummy; } ;


 struct dst_entry* __sk_dst_get (struct sock*) ;
 int fastopen_seqlock ;
 int jiffies ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct tcp_metrics_block* tcp_get_metrics (struct sock*,struct dst_entry*,int) ;
 int write_seqlock_bh (int *) ;
 int write_sequnlock_bh (int *) ;

void tcp_fastopen_cache_set(struct sock *sk, u16 mss,
       struct tcp_fastopen_cookie *cookie, bool syn_lost,
       u16 try_exp)
{
 struct dst_entry *dst = __sk_dst_get(sk);
 struct tcp_metrics_block *tm;

 if (!dst)
  return;
 rcu_read_lock();
 tm = tcp_get_metrics(sk, dst, 1);
 if (tm) {
  struct tcp_fastopen_metrics *tfom = &tm->tcpm_fastopen;

  write_seqlock_bh(&fastopen_seqlock);
  if (mss)
   tfom->mss = mss;
  if (cookie && cookie->len > 0)
   tfom->cookie = *cookie;
  else if (try_exp > tfom->try_exp &&
    tfom->cookie.len <= 0 && !tfom->cookie.exp)
   tfom->try_exp = try_exp;
  if (syn_lost) {
   ++tfom->syn_loss;
   tfom->last_syn_loss = jiffies;
  } else
   tfom->syn_loss = 0;
  write_sequnlock_bh(&fastopen_seqlock);
 }
 rcu_read_unlock();
}
