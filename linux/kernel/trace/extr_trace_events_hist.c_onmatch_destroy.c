
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int event_system; int event; } ;
struct action_data {TYPE_1__ match_data; } ;


 int action_data_destroy (struct action_data*) ;
 int kfree (int ) ;

__attribute__((used)) static void onmatch_destroy(struct action_data *data)
{
 kfree(data->match_data.event);
 kfree(data->match_data.event_system);

 action_data_destroy(data);
}
