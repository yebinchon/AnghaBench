
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_trigger_data {int named_list; int * name; } ;


 int kfree (int *) ;
 int list_del (int *) ;

void del_named_trigger(struct event_trigger_data *data)
{
 kfree(data->name);
 data->name = ((void*)0);

 list_del(&data->named_list);
}
