
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {int tstamp; } ;
struct TYPE_5__ {int syncp; int dropped; } ;
struct TYPE_6__ {int lock; } ;
struct per_cpu_dm_data {TYPE_1__ stats; TYPE_2__ drop_queue; int dm_alert_work; } ;
typedef int ktime_t ;
struct TYPE_7__ {void* pc; } ;


 int GFP_ATOMIC ;
 TYPE_4__* NET_DM_SKB_CB (struct sk_buff*) ;
 int __skb_queue_tail (TYPE_2__*,struct sk_buff*) ;
 int consume_skb (struct sk_buff*) ;
 int dm_cpu_data ;
 int ktime_get_real () ;
 scalar_t__ net_dm_queue_len ;
 int schedule_work (int *) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 int skb_mac_header_was_set (struct sk_buff*) ;
 scalar_t__ skb_queue_len (TYPE_2__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct per_cpu_dm_data* this_cpu_ptr (int *) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

__attribute__((used)) static void net_dm_packet_trace_kfree_skb_hit(void *ignore,
           struct sk_buff *skb,
           void *location)
{
 ktime_t tstamp = ktime_get_real();
 struct per_cpu_dm_data *data;
 struct sk_buff *nskb;
 unsigned long flags;

 if (!skb_mac_header_was_set(skb))
  return;

 nskb = skb_clone(skb, GFP_ATOMIC);
 if (!nskb)
  return;

 NET_DM_SKB_CB(nskb)->pc = location;



 nskb->tstamp = tstamp;

 data = this_cpu_ptr(&dm_cpu_data);

 spin_lock_irqsave(&data->drop_queue.lock, flags);
 if (skb_queue_len(&data->drop_queue) < net_dm_queue_len)
  __skb_queue_tail(&data->drop_queue, nskb);
 else
  goto unlock_free;
 spin_unlock_irqrestore(&data->drop_queue.lock, flags);

 schedule_work(&data->dm_alert_work);

 return;

unlock_free:
 spin_unlock_irqrestore(&data->drop_queue.lock, flags);
 u64_stats_update_begin(&data->stats.syncp);
 data->stats.dropped++;
 u64_stats_update_end(&data->stats.syncp);
 consume_skb(nskb);
}
