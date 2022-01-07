
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Qdisc {int padded; int cpu_qstats; int cpu_bstats; } ;


 int free_percpu (int ) ;
 int kfree (char*) ;
 scalar_t__ qdisc_is_percpu_stats (struct Qdisc*) ;

void qdisc_free(struct Qdisc *qdisc)
{
 if (qdisc_is_percpu_stats(qdisc)) {
  free_percpu(qdisc->cpu_bstats);
  free_percpu(qdisc->cpu_qstats);
 }

 kfree((char *) qdisc - qdisc->padded);
}
