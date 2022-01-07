
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s390_cpumsf_queue {unsigned int queue_nr; int cpu; int * logfile; struct s390_cpumsf* sf; } ;
struct s390_cpumsf {int use_logfile; scalar_t__ logdir; } ;


 int asprintf (char**,char*,unsigned int,...) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 int pr_err (char*,char*) ;
 struct s390_cpumsf_queue* zalloc (int) ;

__attribute__((used)) static struct s390_cpumsf_queue *
s390_cpumsf_alloc_queue(struct s390_cpumsf *sf, unsigned int queue_nr)
{
 struct s390_cpumsf_queue *sfq;

 sfq = zalloc(sizeof(struct s390_cpumsf_queue));
 if (sfq == ((void*)0))
  return ((void*)0);

 sfq->sf = sf;
 sfq->queue_nr = queue_nr;
 sfq->cpu = -1;
 if (sf->use_logfile) {
  char *name;
  int rc;

  rc = (sf->logdir)
   ? asprintf(&name, "%s/aux.smp.%02x",
     sf->logdir, queue_nr)
   : asprintf(&name, "aux.smp.%02x", queue_nr);
  if (rc > 0)
   sfq->logfile = fopen(name, "w");
  if (sfq->logfile == ((void*)0)) {
   pr_err("Failed to open auxiliary log file %s,"
          "continue...\n", name);
   sf->use_logfile = 0;
  }
  free(name);
 }
 return sfq;
}
