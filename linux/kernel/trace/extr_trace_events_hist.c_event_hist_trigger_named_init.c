
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct event_trigger_ops {int dummy; } ;
struct event_trigger_data {TYPE_1__* named_data; int ref; } ;
struct TYPE_2__ {int name; } ;


 int event_hist_trigger_init (struct event_trigger_ops*,TYPE_1__*) ;
 int save_named_trigger (int ,struct event_trigger_data*) ;

__attribute__((used)) static int event_hist_trigger_named_init(struct event_trigger_ops *ops,
      struct event_trigger_data *data)
{
 data->ref++;

 save_named_trigger(data->named_data->name, data);

 event_hist_trigger_init(ops, data->named_data);

 return 0;
}
