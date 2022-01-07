
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct hist_trigger_data {int dummy; } ;
struct TYPE_2__ {int var_str; } ;
struct action_data {scalar_t__ handler; int action_name; TYPE_1__ track_data; } ;


 scalar_t__ HANDLER_ONCHANGE ;
 scalar_t__ HANDLER_ONMAX ;
 int print_action_spec (struct seq_file*,struct hist_trigger_data*,struct action_data*) ;
 int seq_printf (struct seq_file*,char*,int ) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static void print_track_data_spec(struct seq_file *m,
      struct hist_trigger_data *hist_data,
      struct action_data *data)
{
 if (data->handler == HANDLER_ONMAX)
  seq_puts(m, ":onmax(");
 else if (data->handler == HANDLER_ONCHANGE)
  seq_puts(m, ":onchange(");
 seq_printf(m, "%s", data->track_data.var_str);
 seq_printf(m, ").%s(", data->action_name);

 print_action_spec(m, hist_data, data);

 seq_puts(m, ")");
}
