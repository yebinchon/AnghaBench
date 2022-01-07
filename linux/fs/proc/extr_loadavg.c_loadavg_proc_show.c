
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_2__ {int idr; } ;


 int FIXED_1 ;
 int LOAD_FRAC (unsigned long) ;
 int LOAD_INT (unsigned long) ;
 int current ;
 int get_avenrun (unsigned long*,int,int ) ;
 scalar_t__ idr_get_cursor (int *) ;
 int nr_running () ;
 int nr_threads ;
 int seq_printf (struct seq_file*,char*,int ,int ,int ,int ,int ,int ,int ,int ,scalar_t__) ;
 TYPE_1__* task_active_pid_ns (int ) ;

__attribute__((used)) static int loadavg_proc_show(struct seq_file *m, void *v)
{
 unsigned long avnrun[3];

 get_avenrun(avnrun, FIXED_1/200, 0);

 seq_printf(m, "%lu.%02lu %lu.%02lu %lu.%02lu %ld/%d %d\n",
  LOAD_INT(avnrun[0]), LOAD_FRAC(avnrun[0]),
  LOAD_INT(avnrun[1]), LOAD_FRAC(avnrun[1]),
  LOAD_INT(avnrun[2]), LOAD_FRAC(avnrun[2]),
  nr_running(), nr_threads,
  idr_get_cursor(&task_active_pid_ns(current)->idr) - 1);
 return 0;
}
