
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_metrics_block {int dummy; } ;
struct request_sock {int dummy; } ;
struct dst_entry {int dummy; } ;


 int TCP_METRIC_RTT ;
 struct tcp_metrics_block* __tcp_get_metrics_req (struct request_sock*,struct dst_entry*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ tcp_metric_get (struct tcp_metrics_block*,int ) ;

bool tcp_peer_is_proven(struct request_sock *req, struct dst_entry *dst)
{
 struct tcp_metrics_block *tm;
 bool ret;

 if (!dst)
  return 0;

 rcu_read_lock();
 tm = __tcp_get_metrics_req(req, dst);
 if (tm && tcp_metric_get(tm, TCP_METRIC_RTT))
  ret = 1;
 else
  ret = 0;
 rcu_read_unlock();

 return ret;
}
