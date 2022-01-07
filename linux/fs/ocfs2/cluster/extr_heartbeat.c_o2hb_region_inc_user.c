
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ O2HB_PIN_CUT_OFF ;
 int O2NM_MAX_REGIONS ;
 scalar_t__ bitmap_weight (int ,int ) ;
 int o2hb_dependent_users ;
 int o2hb_global_heartbeat_active () ;
 int o2hb_live_lock ;
 int o2hb_quorum_region_bitmap ;
 int o2hb_region_pin (char const*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int o2hb_region_inc_user(const char *region_uuid)
{
 int ret = 0;

 spin_lock(&o2hb_live_lock);


 if (!o2hb_global_heartbeat_active()) {
     ret = o2hb_region_pin(region_uuid);
     goto unlock;
 }





 o2hb_dependent_users++;
 if (o2hb_dependent_users > 1)
  goto unlock;

 if (bitmap_weight(o2hb_quorum_region_bitmap,
      O2NM_MAX_REGIONS) <= O2HB_PIN_CUT_OFF)
  ret = o2hb_region_pin(((void*)0));

unlock:
 spin_unlock(&o2hb_live_lock);
 return ret;
}
