
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int audit_backlog_wait_time ;
 int audit_do_config_change (char*,int *,int ) ;

__attribute__((used)) static int audit_set_backlog_wait_time(u32 timeout)
{
 return audit_do_config_change("audit_backlog_wait_time",
          &audit_backlog_wait_time, timeout);
}
