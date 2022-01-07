
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_trigger_data {int dummy; } ;


 int __pause_named_trigger (struct event_trigger_data*,int) ;

void unpause_named_trigger(struct event_trigger_data *data)
{
 __pause_named_trigger(data, 0);
}
