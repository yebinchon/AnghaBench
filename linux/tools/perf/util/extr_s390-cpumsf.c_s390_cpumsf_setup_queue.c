
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct s390_cpumsf_queue {int cpu; } ;
struct s390_cpumsf {int heap; } ;
struct auxtrace_queue {int cpu; struct s390_cpumsf_queue* priv; int head; } ;


 int ENOMEM ;
 int auxtrace_heap__add (int *,unsigned int,int ) ;
 scalar_t__ list_empty (int *) ;
 struct s390_cpumsf_queue* s390_cpumsf_alloc_queue (struct s390_cpumsf*,unsigned int) ;

__attribute__((used)) static int s390_cpumsf_setup_queue(struct s390_cpumsf *sf,
       struct auxtrace_queue *queue,
       unsigned int queue_nr, u64 ts)
{
 struct s390_cpumsf_queue *sfq = queue->priv;

 if (list_empty(&queue->head))
  return 0;

 if (sfq == ((void*)0)) {
  sfq = s390_cpumsf_alloc_queue(sf, queue_nr);
  if (!sfq)
   return -ENOMEM;
  queue->priv = sfq;

  if (queue->cpu != -1)
   sfq->cpu = queue->cpu;
 }
 return auxtrace_heap__add(&sf->heap, queue_nr, ts);
}
