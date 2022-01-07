
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_trigger_data {int named_list; int name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kstrdup (char const*,int ) ;
 int list_add (int *,int *) ;
 int named_triggers ;

int save_named_trigger(const char *name, struct event_trigger_data *data)
{
 data->name = kstrdup(name, GFP_KERNEL);
 if (!data->name)
  return -ENOMEM;

 list_add(&data->named_list, &named_triggers);

 return 0;
}
