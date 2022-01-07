
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2hb_region {int hr_nego_node_bitmap; int hr_nego_timeout_work; int hr_write_timeout_work; int hr_region_num; int hr_steady_iterations; } ;


 int ML_HEARTBEAT ;
 int O2HB_MAX_WRITE_TIMEOUT_MS ;
 int O2HB_NEGO_TIMEOUT_MS ;
 scalar_t__ atomic_read (int *) ;
 int cancel_delayed_work (int *) ;
 int clear_bit (int ,int ) ;
 int memset (int ,int ,int) ;
 int mlog (int ,char*,int ) ;
 int msecs_to_jiffies (int ) ;
 int o2hb_failed_region_bitmap ;
 scalar_t__ o2hb_global_heartbeat_active () ;
 int o2hb_live_lock ;
 int schedule_delayed_work (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void o2hb_arm_timeout(struct o2hb_region *reg)
{

 if (atomic_read(&reg->hr_steady_iterations) != 0)
  return;

 mlog(ML_HEARTBEAT, "Queue write timeout for %u ms\n",
      O2HB_MAX_WRITE_TIMEOUT_MS);

 if (o2hb_global_heartbeat_active()) {
  spin_lock(&o2hb_live_lock);
  clear_bit(reg->hr_region_num, o2hb_failed_region_bitmap);
  spin_unlock(&o2hb_live_lock);
 }
 cancel_delayed_work(&reg->hr_write_timeout_work);
 schedule_delayed_work(&reg->hr_write_timeout_work,
         msecs_to_jiffies(O2HB_MAX_WRITE_TIMEOUT_MS));

 cancel_delayed_work(&reg->hr_nego_timeout_work);

 schedule_delayed_work(&reg->hr_nego_timeout_work,
         msecs_to_jiffies(O2HB_NEGO_TIMEOUT_MS));
 memset(reg->hr_nego_node_bitmap, 0, sizeof(reg->hr_nego_node_bitmap));
}
