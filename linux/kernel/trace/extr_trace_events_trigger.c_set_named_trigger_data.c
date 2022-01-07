
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_trigger_data {struct event_trigger_data* named_data; } ;



void set_named_trigger_data(struct event_trigger_data *data,
       struct event_trigger_data *named_data)
{
 data->named_data = named_data;
}
