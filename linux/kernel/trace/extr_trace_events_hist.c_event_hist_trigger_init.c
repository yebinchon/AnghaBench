
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hist_trigger_data {TYPE_1__* attrs; } ;
struct event_trigger_ops {int dummy; } ;
struct event_trigger_data {int ref; struct hist_trigger_data* private_data; } ;
struct TYPE_2__ {scalar_t__ name; } ;


 int save_named_trigger (scalar_t__,struct event_trigger_data*) ;

__attribute__((used)) static int event_hist_trigger_init(struct event_trigger_ops *ops,
       struct event_trigger_data *data)
{
 struct hist_trigger_data *hist_data = data->private_data;

 if (!data->ref && hist_data->attrs->name)
  save_named_trigger(hist_data->attrs->name, data);

 data->ref++;

 return 0;
}
