
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hist_trigger_data {int dummy; } ;
struct action_data {int dummy; } ;


 int action_create (struct hist_trigger_data*,struct action_data*) ;

__attribute__((used)) static int onmatch_create(struct hist_trigger_data *hist_data,
     struct action_data *data)
{
 return action_create(hist_data, data);
}
