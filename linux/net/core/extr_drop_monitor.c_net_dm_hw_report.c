
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_dm_hw_metadata {int dummy; } ;
struct TYPE_2__ {int (* hw_probe ) (struct sk_buff*,struct net_dm_hw_metadata const*) ;} ;


 int monitor_hw ;
 size_t net_dm_alert_mode ;
 TYPE_1__** net_dm_alert_ops_arr ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int stub1 (struct sk_buff*,struct net_dm_hw_metadata const*) ;

void net_dm_hw_report(struct sk_buff *skb,
        const struct net_dm_hw_metadata *hw_metadata)
{
 rcu_read_lock();

 if (!monitor_hw)
  goto out;

 net_dm_alert_ops_arr[net_dm_alert_mode]->hw_probe(skb, hw_metadata);

out:
 rcu_read_unlock();
}
