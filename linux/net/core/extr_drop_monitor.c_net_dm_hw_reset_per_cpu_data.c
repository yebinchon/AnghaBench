
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct per_cpu_dm_data {int lock; int hw_entries; int send_timer; } ;
struct net_dm_hw_entries {int dummy; } ;


 int GFP_KERNEL ;
 int HZ ;
 int dm_hit_limit ;
 int entries ;
 scalar_t__ jiffies ;
 struct net_dm_hw_entries* kzalloc (int ,int ) ;
 int mod_timer (int *,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int struct_size (struct net_dm_hw_entries*,int ,int ) ;
 int swap (int ,struct net_dm_hw_entries*) ;

__attribute__((used)) static struct net_dm_hw_entries *
net_dm_hw_reset_per_cpu_data(struct per_cpu_dm_data *hw_data)
{
 struct net_dm_hw_entries *hw_entries;
 unsigned long flags;

 hw_entries = kzalloc(struct_size(hw_entries, entries, dm_hit_limit),
        GFP_KERNEL);
 if (!hw_entries) {




  mod_timer(&hw_data->send_timer, jiffies + HZ / 10);
 }

 spin_lock_irqsave(&hw_data->lock, flags);
 swap(hw_data->hw_entries, hw_entries);
 spin_unlock_irqrestore(&hw_data->lock, flags);

 return hw_entries;
}
