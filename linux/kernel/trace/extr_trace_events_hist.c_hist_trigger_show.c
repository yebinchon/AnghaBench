
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct seq_file {int dummy; } ;
struct hist_trigger_data {TYPE_1__* map; } ;
struct event_trigger_data {struct hist_trigger_data* private_data; TYPE_2__* ops; } ;
struct TYPE_4__ {int (* print ) (struct seq_file*,TYPE_2__*,struct event_trigger_data*) ;} ;
struct TYPE_3__ {int drops; int hits; } ;


 scalar_t__ atomic64_read (int *) ;
 int print_entries (struct seq_file*,struct hist_trigger_data*) ;
 int seq_printf (struct seq_file*,char*,int ,int,int ) ;
 int seq_puts (struct seq_file*,char*) ;
 int stub1 (struct seq_file*,TYPE_2__*,struct event_trigger_data*) ;
 int track_data_snapshot_print (struct seq_file*,struct hist_trigger_data*) ;

__attribute__((used)) static void hist_trigger_show(struct seq_file *m,
         struct event_trigger_data *data, int n)
{
 struct hist_trigger_data *hist_data;
 int n_entries;

 if (n > 0)
  seq_puts(m, "\n\n");

 seq_puts(m, "# event histogram\n#\n# trigger info: ");
 data->ops->print(m, data->ops, data);
 seq_puts(m, "#\n\n");

 hist_data = data->private_data;
 n_entries = print_entries(m, hist_data);
 if (n_entries < 0)
  n_entries = 0;

 track_data_snapshot_print(m, hist_data);

 seq_printf(m, "\nTotals:\n    Hits: %llu\n    Entries: %u\n    Dropped: %llu\n",
     (u64)atomic64_read(&hist_data->map->hits),
     n_entries, (u64)atomic64_read(&hist_data->map->drops));
}
