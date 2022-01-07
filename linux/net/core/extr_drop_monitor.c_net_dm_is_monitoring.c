
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TRACE_ON ;
 scalar_t__ monitor_hw ;
 scalar_t__ trace_state ;

__attribute__((used)) static bool net_dm_is_monitoring(void)
{
 return trace_state == TRACE_ON || monitor_hw;
}
