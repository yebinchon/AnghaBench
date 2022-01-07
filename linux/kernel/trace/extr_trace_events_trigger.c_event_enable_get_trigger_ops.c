
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_trigger_ops {int dummy; } ;


 int ENABLE_EVENT_STR ;
 int ENABLE_HIST_STR ;
 struct event_trigger_ops event_disable_count_trigger_ops ;
 struct event_trigger_ops event_disable_trigger_ops ;
 struct event_trigger_ops event_enable_count_trigger_ops ;
 struct event_trigger_ops event_enable_trigger_ops ;
 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static struct event_trigger_ops *
event_enable_get_trigger_ops(char *cmd, char *param)
{
 struct event_trigger_ops *ops;
 bool enable;





 enable = strcmp(cmd, ENABLE_EVENT_STR) == 0;

 if (enable)
  ops = param ? &event_enable_count_trigger_ops :
   &event_enable_trigger_ops;
 else
  ops = param ? &event_disable_count_trigger_ops :
   &event_disable_trigger_ops;

 return ops;
}
