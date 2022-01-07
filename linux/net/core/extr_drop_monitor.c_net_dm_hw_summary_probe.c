
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_3__ {scalar_t__ expires; } ;
struct per_cpu_dm_data {int lock; TYPE_1__ send_timer; struct net_dm_hw_entries* hw_entries; } ;
struct net_dm_hw_metadata {int trap_name; } ;
struct net_dm_hw_entry {int count; int trap_name; } ;
struct net_dm_hw_entries {int num_entries; struct net_dm_hw_entry* entries; } ;


 int HZ ;
 scalar_t__ NET_DM_MAX_HW_TRAP_NAME_LEN ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int add_timer (TYPE_1__*) ;
 int dm_delay ;
 int dm_hit_limit ;
 int dm_hw_cpu_data ;
 scalar_t__ jiffies ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int strlcpy (int ,int ,scalar_t__) ;
 int strncmp (int ,int ,scalar_t__) ;
 struct per_cpu_dm_data* this_cpu_ptr (int *) ;
 int timer_pending (TYPE_1__*) ;

__attribute__((used)) static void
net_dm_hw_summary_probe(struct sk_buff *skb,
   const struct net_dm_hw_metadata *hw_metadata)
{
 struct net_dm_hw_entries *hw_entries;
 struct net_dm_hw_entry *hw_entry;
 struct per_cpu_dm_data *hw_data;
 unsigned long flags;
 int i;

 hw_data = this_cpu_ptr(&dm_hw_cpu_data);
 spin_lock_irqsave(&hw_data->lock, flags);
 hw_entries = hw_data->hw_entries;

 if (!hw_entries)
  goto out;

 for (i = 0; i < hw_entries->num_entries; i++) {
  hw_entry = &hw_entries->entries[i];
  if (!strncmp(hw_entry->trap_name, hw_metadata->trap_name,
        NET_DM_MAX_HW_TRAP_NAME_LEN - 1)) {
   hw_entry->count++;
   goto out;
  }
 }
 if (WARN_ON_ONCE(hw_entries->num_entries == dm_hit_limit))
  goto out;

 hw_entry = &hw_entries->entries[hw_entries->num_entries];
 strlcpy(hw_entry->trap_name, hw_metadata->trap_name,
  NET_DM_MAX_HW_TRAP_NAME_LEN - 1);
 hw_entry->count = 1;
 hw_entries->num_entries++;

 if (!timer_pending(&hw_data->send_timer)) {
  hw_data->send_timer.expires = jiffies + dm_delay * HZ;
  add_timer(&hw_data->send_timer);
 }

out:
 spin_unlock_irqrestore(&hw_data->lock, flags);
}
