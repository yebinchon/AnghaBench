
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_trigger_ops {int dummy; } ;


 struct event_trigger_ops event_hist_trigger_ops ;

__attribute__((used)) static struct event_trigger_ops *event_hist_get_trigger_ops(char *cmd,
           char *param)
{
 return &event_hist_trigger_ops;
}
