
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ O2HB_HEARTBEAT_GLOBAL ;
 scalar_t__ o2hb_heartbeat_mode ;

int o2hb_global_heartbeat_active(void)
{
 return (o2hb_heartbeat_mode == O2HB_HEARTBEAT_GLOBAL);
}
