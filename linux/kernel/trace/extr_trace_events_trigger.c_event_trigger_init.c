
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_trigger_ops {int dummy; } ;
struct event_trigger_data {int ref; } ;



int event_trigger_init(struct event_trigger_ops *ops,
         struct event_trigger_data *data)
{
 data->ref++;
 return 0;
}
