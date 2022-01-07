
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_clockid; scalar_t__ sk_txtime_deadline_mode; } ;
struct sk_buff {struct sock* sk; int tstamp; } ;
struct etf_sched_data {scalar_t__ clockid; scalar_t__ deadline_mode; int last; int (* get_time ) () ;scalar_t__ skip_sock_check; } ;
struct Qdisc {int dummy; } ;
typedef int ktime_t ;


 int SOCK_TXTIME ;
 scalar_t__ ktime_before (int ,int ) ;
 struct etf_sched_data* qdisc_priv (struct Qdisc*) ;
 int sock_flag (struct sock*,int ) ;
 int stub1 () ;

__attribute__((used)) static bool is_packet_valid(struct Qdisc *sch, struct sk_buff *nskb)
{
 struct etf_sched_data *q = qdisc_priv(sch);
 ktime_t txtime = nskb->tstamp;
 struct sock *sk = nskb->sk;
 ktime_t now;

 if (q->skip_sock_check)
  goto skip;

 if (!sk)
  return 0;

 if (!sock_flag(sk, SOCK_TXTIME))
  return 0;




 if (sk->sk_clockid != q->clockid)
  return 0;

 if (sk->sk_txtime_deadline_mode != q->deadline_mode)
  return 0;

skip:
 now = q->get_time();
 if (ktime_before(txtime, now) || ktime_before(txtime, q->last))
  return 0;

 return 1;
}
