
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct res_sample {int tid; int cpu; int time; } ;
struct perf_sample {int tid; int cpu; int time; } ;
struct hist_entry {scalar_t__ num_res; struct res_sample* res_samples; } ;
struct TYPE_2__ {scalar_t__ res_sample; } ;


 int random_max (scalar_t__) ;
 TYPE_1__ symbol_conf ;

__attribute__((used)) static void hists__res_sample(struct hist_entry *he, struct perf_sample *sample)
{
 struct res_sample *r;
 int j;

 if (he->num_res < symbol_conf.res_sample) {
  j = he->num_res++;
 } else {
  j = random_max(symbol_conf.res_sample);
 }
 r = &he->res_samples[j];
 r->time = sample->time;
 r->cpu = sample->cpu;
 r->tid = sample->tid;
}
