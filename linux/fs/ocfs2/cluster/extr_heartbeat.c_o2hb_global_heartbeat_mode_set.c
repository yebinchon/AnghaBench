
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int O2HB_HEARTBEAT_NUM_MODES ;
 scalar_t__ list_empty (int *) ;
 int o2hb_all_regions ;
 unsigned int o2hb_heartbeat_mode ;
 int o2hb_live_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int o2hb_global_heartbeat_mode_set(unsigned int hb_mode)
{
 int ret = -1;

 if (hb_mode < O2HB_HEARTBEAT_NUM_MODES) {
  spin_lock(&o2hb_live_lock);
  if (list_empty(&o2hb_all_regions)) {
   o2hb_heartbeat_mode = hb_mode;
   ret = 0;
  }
  spin_unlock(&o2hb_live_lock);
 }

 return ret;
}
