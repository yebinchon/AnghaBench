
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_trigger_ops {int dummy; } ;


 scalar_t__ strcmp (char*,char*) ;
 struct event_trigger_ops traceoff_count_trigger_ops ;
 struct event_trigger_ops traceoff_trigger_ops ;
 struct event_trigger_ops traceon_count_trigger_ops ;
 struct event_trigger_ops traceon_trigger_ops ;

__attribute__((used)) static struct event_trigger_ops *
onoff_get_trigger_ops(char *cmd, char *param)
{
 struct event_trigger_ops *ops;


 if (strcmp(cmd, "traceon") == 0)
  ops = param ? &traceon_count_trigger_ops :
   &traceon_trigger_ops;
 else
  ops = param ? &traceoff_count_trigger_ops :
   &traceoff_trigger_ops;

 return ops;
}
