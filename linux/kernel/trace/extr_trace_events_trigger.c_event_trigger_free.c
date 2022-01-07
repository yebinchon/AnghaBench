
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_trigger_ops {int dummy; } ;
struct event_trigger_data {scalar_t__ ref; } ;


 scalar_t__ WARN_ON_ONCE (int) ;
 int trigger_data_free (struct event_trigger_data*) ;

__attribute__((used)) static void
event_trigger_free(struct event_trigger_ops *ops,
     struct event_trigger_data *data)
{
 if (WARN_ON_ONCE(data->ref <= 0))
  return;

 data->ref--;
 if (!data->ref)
  trigger_data_free(data);
}
