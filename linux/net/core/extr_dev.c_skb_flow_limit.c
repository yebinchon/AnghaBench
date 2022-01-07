
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct softnet_data {int flow_limit; } ;
struct sk_buff {int dummy; } ;
struct sd_flow_limit {int num_buckets; unsigned int* history; size_t history_head; int* buckets; int count; } ;


 int FLOW_LIMIT_HISTORY ;
 scalar_t__ likely (int) ;
 int netdev_max_backlog ;
 struct sd_flow_limit* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int skb_get_hash (struct sk_buff*) ;
 int softnet_data ;
 struct softnet_data* this_cpu_ptr (int *) ;

__attribute__((used)) static bool skb_flow_limit(struct sk_buff *skb, unsigned int qlen)
{
 return 0;
}
