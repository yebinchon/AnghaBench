
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ show_details; int nr_tasks; int nr_cpus; int nr_loops; int bytes_global; int bytes_process; int bytes_thread; } ;
struct TYPE_4__ {TYPE_1__ p; } ;


 int fflush (int ) ;
 TYPE_2__* g ;
 int nr_numa_nodes () ;
 int printf (char*,...) ;
 int stdout ;

__attribute__((used)) static void print_summary(void)
{
 if (g->p.show_details < 0)
  return;

 printf("\n ###\n");
 printf(" # %d %s will execute (on %d nodes, %d CPUs):\n",
  g->p.nr_tasks, g->p.nr_tasks == 1 ? "task" : "tasks", nr_numa_nodes(), g->p.nr_cpus);
 printf(" #      %5dx %5ldMB global  shared mem operations\n",
   g->p.nr_loops, g->p.bytes_global/1024/1024);
 printf(" #      %5dx %5ldMB process shared mem operations\n",
   g->p.nr_loops, g->p.bytes_process/1024/1024);
 printf(" #      %5dx %5ldMB thread  local  mem operations\n",
   g->p.nr_loops, g->p.bytes_thread/1024/1024);

 printf(" ###\n");

 printf("\n ###\n"); fflush(stdout);
}
