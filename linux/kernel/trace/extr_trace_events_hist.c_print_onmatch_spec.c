
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct hist_trigger_data {int dummy; } ;
struct TYPE_2__ {int event; int event_system; } ;
struct action_data {int action_name; TYPE_1__ match_data; } ;


 int print_action_spec (struct seq_file*,struct hist_trigger_data*,struct action_data*) ;
 int seq_printf (struct seq_file*,char*,int ,...) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static void print_onmatch_spec(struct seq_file *m,
          struct hist_trigger_data *hist_data,
          struct action_data *data)
{
 seq_printf(m, ":onmatch(%s.%s).", data->match_data.event_system,
     data->match_data.event);

 seq_printf(m, "%s(", data->action_name);

 print_action_spec(m, hist_data, data);

 seq_puts(m, ")");
}
