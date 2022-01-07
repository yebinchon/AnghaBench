
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_ext_ack {int dummy; } ;


 int TRACE_OFF ;
 int net_dm_hw_monitor_stop (struct netlink_ext_ack*) ;
 int set_all_monitor_traces (int ,struct netlink_ext_ack*) ;

__attribute__((used)) static void net_dm_monitor_stop(bool set_sw, bool set_hw,
    struct netlink_ext_ack *extack)
{
 if (set_hw)
  net_dm_hw_monitor_stop(extack);
 if (set_sw)
  set_all_monitor_traces(TRACE_OFF, extack);
}
