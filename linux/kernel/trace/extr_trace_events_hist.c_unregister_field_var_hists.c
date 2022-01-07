
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct trace_event_file {int dummy; } ;
struct hist_trigger_data {unsigned int n_field_var_hists; TYPE_2__** field_var_hists; } ;
struct TYPE_4__ {char* cmd; TYPE_1__* hist_data; } ;
struct TYPE_3__ {struct trace_event_file* event_file; } ;


 int event_hist_trigger_func (int *,struct trace_event_file*,char*,char*,char*) ;
 int trigger_hist_cmd ;

__attribute__((used)) static void unregister_field_var_hists(struct hist_trigger_data *hist_data)
{
 struct trace_event_file *file;
 unsigned int i;
 char *cmd;
 int ret;

 for (i = 0; i < hist_data->n_field_var_hists; i++) {
  file = hist_data->field_var_hists[i]->hist_data->event_file;
  cmd = hist_data->field_var_hists[i]->cmd;
  ret = event_hist_trigger_func(&trigger_hist_cmd, file,
           "!hist", "hist", cmd);
 }
}
