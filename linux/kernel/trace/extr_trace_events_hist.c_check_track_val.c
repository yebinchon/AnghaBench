
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct tracing_map_elt {int dummy; } ;
struct hist_trigger_data {int dummy; } ;
struct TYPE_4__ {int (* check_val ) (int ,int ) ;TYPE_1__* track_var; } ;
struct action_data {TYPE_2__ track_data; } ;
struct TYPE_3__ {struct hist_trigger_data* hist_data; } ;


 int get_track_val (struct hist_trigger_data*,struct tracing_map_elt*,struct action_data*) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static bool check_track_val(struct tracing_map_elt *elt,
       struct action_data *data,
       u64 var_val)
{
 struct hist_trigger_data *hist_data;
 u64 track_val;

 hist_data = data->track_data.track_var->hist_data;
 track_val = get_track_val(hist_data, elt, data);

 return data->track_data.check_val(track_val, var_val);
}
