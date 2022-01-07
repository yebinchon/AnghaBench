
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct event_trigger_data {TYPE_1__* cmd_ops; } ;
struct TYPE_2__ {int (* set_filter ) (int *,struct event_trigger_data*,int *) ;} ;


 int kfree (struct event_trigger_data*) ;
 int stub1 (int *,struct event_trigger_data*,int *) ;
 int tracepoint_synchronize_unregister () ;

void trigger_data_free(struct event_trigger_data *data)
{
 if (data->cmd_ops->set_filter)
  data->cmd_ops->set_filter(((void*)0), data, ((void*)0));


 tracepoint_synchronize_unregister();

 kfree(data);
}
