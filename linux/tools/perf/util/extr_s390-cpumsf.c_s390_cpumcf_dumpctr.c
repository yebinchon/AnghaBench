
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s390_cpumsf_queue {int * logfile_ctr; } ;
struct TYPE_2__ {size_t nr_queues; struct auxtrace_queue* queue_array; } ;
struct s390_cpumsf {scalar_t__ logdir; TYPE_1__ queues; int use_logfile; } ;
struct perf_sample {size_t cpu; scalar_t__ raw_size; int raw_data; } ;
struct auxtrace_queue {struct s390_cpumsf_queue* priv; } ;


 int asprintf (char**,char*,size_t,...) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 size_t fwrite (int ,scalar_t__,int,int *) ;
 int pr_err (char*,...) ;

__attribute__((used)) static int s390_cpumcf_dumpctr(struct s390_cpumsf *sf,
          struct perf_sample *sample)
{
 struct s390_cpumsf_queue *sfq;
 struct auxtrace_queue *q;
 int rc = 0;

 if (!sf->use_logfile || sf->queues.nr_queues <= sample->cpu)
  return rc;

 q = &sf->queues.queue_array[sample->cpu];
 sfq = q->priv;
 if (!sfq)
  return rc;

 if (!sfq->logfile_ctr) {
  char *name;

  rc = (sf->logdir)
   ? asprintf(&name, "%s/aux.ctr.%02x",
     sf->logdir, sample->cpu)
   : asprintf(&name, "aux.ctr.%02x", sample->cpu);
  if (rc > 0)
   sfq->logfile_ctr = fopen(name, "w");
  if (sfq->logfile_ctr == ((void*)0)) {
   pr_err("Failed to open counter set log file %s, "
          "continue...\n", name);
   rc = 1;
  }
  free(name);
 }

 if (sfq->logfile_ctr) {

  size_t n = fwrite(sample->raw_data, sample->raw_size - 4, 1,
      sfq->logfile_ctr);
  if (n != 1) {
   pr_err("Failed to write counter set data\n");
   rc = 1;
  }
 }
 return rc;
}
