
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_ext_ack {int dummy; } ;


 int TRACE_OFF ;
 int TRACE_ON ;
 int net_dm_hw_monitor_start (struct netlink_ext_ack*) ;
 int set_all_monitor_traces (int ,struct netlink_ext_ack*) ;

__attribute__((used)) static int net_dm_monitor_start(bool set_sw, bool set_hw,
    struct netlink_ext_ack *extack)
{
 bool sw_set = 0;
 int rc;

 if (set_sw) {
  rc = set_all_monitor_traces(TRACE_ON, extack);
  if (rc)
   return rc;
  sw_set = 1;
 }

 if (set_hw) {
  rc = net_dm_hw_monitor_start(extack);
  if (rc)
   goto err_monitor_hw;
 }

 return 0;

err_monitor_hw:
 if (sw_set)
  set_all_monitor_traces(TRACE_OFF, extack);
 return rc;
}
