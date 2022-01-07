
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* threads; } ;
struct TYPE_3__ {unsigned int curr_cpu; } ;


 TYPE_2__* g ;
 int prctl (int ,unsigned long) ;
 unsigned int sched_getcpu () ;

__attribute__((used)) static void update_curr_cpu(int task_nr, unsigned long bytes_worked)
{
 unsigned int cpu;

 cpu = sched_getcpu();

 g->threads[task_nr].curr_cpu = cpu;
 prctl(0, bytes_worked);
}
