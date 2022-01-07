
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_trigger_ops {int dummy; } ;
struct event_trigger_data {scalar_t__ ref; int named_data; } ;


 scalar_t__ WARN_ON_ONCE (int) ;
 int del_named_trigger (struct event_trigger_data*) ;
 int event_hist_trigger_free (struct event_trigger_ops*,int ) ;
 int trigger_data_free (struct event_trigger_data*) ;

__attribute__((used)) static void event_hist_trigger_named_free(struct event_trigger_ops *ops,
       struct event_trigger_data *data)
{
 if (WARN_ON_ONCE(data->ref <= 0))
  return;

 event_hist_trigger_free(ops, data->named_data);

 data->ref--;
 if (!data->ref) {
  del_named_trigger(data);
  trigger_data_free(data);
 }
}
