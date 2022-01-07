
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct timechart {int proc_num; scalar_t__ numcpus; int tasks_only; int turbo_frequency; int max_freq; int last_time; int first_time; scalar_t__ io_events; scalar_t__ power_only; } ;


 int BYTES_THRESH ;
 int TIME_THRESH ;
 int determine_display_io_tasks (struct timechart*,int) ;
 int determine_display_tasks (struct timechart*,int) ;
 int determine_display_tasks_filtered (struct timechart*) ;
 int draw_c_p_states (struct timechart*) ;
 int draw_cpu_usage (struct timechart*) ;
 int draw_io_bars (struct timechart*) ;
 int draw_process_bars (struct timechart*) ;
 int draw_wakeups (struct timechart*) ;
 int open_svg (char const*,scalar_t__,int,int ,int ) ;
 scalar_t__ process_filter ;
 int svg_close () ;
 int svg_cpu_box (scalar_t__,int ,int ) ;
 int svg_io_legenda () ;
 int svg_legenda () ;
 int svg_time_grid (double) ;

__attribute__((used)) static void write_svg_file(struct timechart *tchart, const char *filename)
{
 u64 i;
 int count;
 int thresh = tchart->io_events ? BYTES_THRESH : TIME_THRESH;

 if (tchart->power_only)
  tchart->proc_num = 0;



 do {
  if (process_filter)
   count = determine_display_tasks_filtered(tchart);
  else if (tchart->io_events)
   count = determine_display_io_tasks(tchart, thresh);
  else
   count = determine_display_tasks(tchart, thresh);
  thresh /= 10;
 } while (!process_filter && thresh && count < tchart->proc_num);

 if (!tchart->proc_num)
  count = 0;

 if (tchart->io_events) {
  open_svg(filename, 0, count, tchart->first_time, tchart->last_time);

  svg_time_grid(0.5);
  svg_io_legenda();

  draw_io_bars(tchart);
 } else {
  open_svg(filename, tchart->numcpus, count, tchart->first_time, tchart->last_time);

  svg_time_grid(0);

  svg_legenda();

  for (i = 0; i < tchart->numcpus; i++)
   svg_cpu_box(i, tchart->max_freq, tchart->turbo_frequency);

  draw_cpu_usage(tchart);
  if (tchart->proc_num)
   draw_process_bars(tchart);
  if (!tchart->tasks_only)
   draw_c_p_states(tchart);
  if (tchart->proc_num)
   draw_wakeups(tchart);
 }

 svg_close();
}
