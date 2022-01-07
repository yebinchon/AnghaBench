
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {unsigned int nr_queues; int * queue_array; } ;
struct s390_cpumsf {TYPE_1__ queues; } ;


 int s390_cpumsf_setup_queue (struct s390_cpumsf*,int *,unsigned int,int ) ;

__attribute__((used)) static int s390_cpumsf_setup_queues(struct s390_cpumsf *sf, u64 ts)
{
 unsigned int i;
 int ret = 0;

 for (i = 0; i < sf->queues.nr_queues; i++) {
  ret = s390_cpumsf_setup_queue(sf, &sf->queues.queue_array[i],
           i, ts);
  if (ret)
   break;
 }
 return ret;
}
