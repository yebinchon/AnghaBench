
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_ext_ack {int dummy; } ;


 int EAGAIN ;
 int EINPROGRESS ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;


 int net_dm_trace_off_set () ;
 int net_dm_trace_on_set (struct netlink_ext_ack*) ;
 int trace_state ;

__attribute__((used)) static int set_all_monitor_traces(int state, struct netlink_ext_ack *extack)
{
 int rc = 0;

 if (state == trace_state) {
  NL_SET_ERR_MSG_MOD(extack, "Trace state already set to requested state");
  return -EAGAIN;
 }

 switch (state) {
 case 128:
  rc = net_dm_trace_on_set(extack);
  break;
 case 129:
  net_dm_trace_off_set();
  break;
 default:
  rc = 1;
  break;
 }

 if (!rc)
  trace_state = state;
 else
  rc = -EINPROGRESS;

 return rc;
}
