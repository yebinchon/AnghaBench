
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpm_hash_bucket {int chain; } ;
struct tcp_metrics_block {int tcpm_next; } ;
struct sk_buff {int len; int sk; } ;
struct netlink_callback {unsigned int* args; } ;
struct net {int dummy; } ;


 int net_eq (int ,struct net*) ;
 struct tcp_metrics_block* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct net* sock_net (int ) ;
 scalar_t__ tcp_metrics_dump_info (struct sk_buff*,struct netlink_callback*,struct tcp_metrics_block*) ;
 struct tcpm_hash_bucket* tcp_metrics_hash ;
 unsigned int tcp_metrics_hash_log ;
 int tm_net (struct tcp_metrics_block*) ;

__attribute__((used)) static int tcp_metrics_nl_dump(struct sk_buff *skb,
          struct netlink_callback *cb)
{
 struct net *net = sock_net(skb->sk);
 unsigned int max_rows = 1U << tcp_metrics_hash_log;
 unsigned int row, s_row = cb->args[0];
 int s_col = cb->args[1], col = s_col;

 for (row = s_row; row < max_rows; row++, s_col = 0) {
  struct tcp_metrics_block *tm;
  struct tcpm_hash_bucket *hb = tcp_metrics_hash + row;

  rcu_read_lock();
  for (col = 0, tm = rcu_dereference(hb->chain); tm;
       tm = rcu_dereference(tm->tcpm_next), col++) {
   if (!net_eq(tm_net(tm), net))
    continue;
   if (col < s_col)
    continue;
   if (tcp_metrics_dump_info(skb, cb, tm) < 0) {
    rcu_read_unlock();
    goto done;
   }
  }
  rcu_read_unlock();
 }

done:
 cb->args[0] = row;
 cb->args[1] = col;
 return skb->len;
}
