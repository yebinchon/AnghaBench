
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int o2hb_dependent_users ;
 int o2hb_global_heartbeat_active () ;
 int o2hb_live_lock ;
 int o2hb_region_unpin (char const*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void o2hb_region_dec_user(const char *region_uuid)
{
 spin_lock(&o2hb_live_lock);


 if (!o2hb_global_heartbeat_active()) {
     o2hb_region_unpin(region_uuid);
     goto unlock;
 }





 o2hb_dependent_users--;
 if (!o2hb_dependent_users)
  o2hb_region_unpin(((void*)0));

unlock:
 spin_unlock(&o2hb_live_lock);
}
