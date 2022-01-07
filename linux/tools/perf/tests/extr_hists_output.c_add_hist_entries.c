
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct perf_sample {int period; int ip; int tid; int pid; int cpu; int cpumode; } ;
struct machine {int dummy; } ;
struct hists {int dummy; } ;
struct hist_entry_iter {int hide_unresolved; int * ops; struct perf_sample* sample; struct evsel* evsel; } ;
struct evsel {int dummy; } ;
struct addr_location {int sym; int map; int thread; } ;
struct TYPE_3__ {int sym; int map; int thread; int ip; int pid; int cpu; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int PERF_RECORD_MISC_USER ;
 int TEST_FAIL ;
 int TEST_OK ;
 int addr_location__put (struct addr_location*) ;
 TYPE_1__* fake_samples ;
 scalar_t__ hist_entry_iter__add (struct hist_entry_iter*,struct addr_location*,int ,int *) ;
 int hist_iter_normal ;
 struct evsel* hists_to_evsel (struct hists*) ;
 scalar_t__ machine__resolve (struct machine*,struct addr_location*,struct perf_sample*) ;
 int pr_debug (char*) ;
 int sysctl_perf_event_max_stack ;

__attribute__((used)) static int add_hist_entries(struct hists *hists, struct machine *machine)
{
 struct addr_location al;
 struct evsel *evsel = hists_to_evsel(hists);
 struct perf_sample sample = { .period = 100, };
 size_t i;

 for (i = 0; i < ARRAY_SIZE(fake_samples); i++) {
  struct hist_entry_iter iter = {
   .evsel = evsel,
   .sample = &sample,
   .ops = &hist_iter_normal,
   .hide_unresolved = 0,
  };

  sample.cpumode = PERF_RECORD_MISC_USER;
  sample.cpu = fake_samples[i].cpu;
  sample.pid = fake_samples[i].pid;
  sample.tid = fake_samples[i].pid;
  sample.ip = fake_samples[i].ip;

  if (machine__resolve(machine, &al, &sample) < 0)
   goto out;

  if (hist_entry_iter__add(&iter, &al, sysctl_perf_event_max_stack,
      ((void*)0)) < 0) {
   addr_location__put(&al);
   goto out;
  }

  fake_samples[i].thread = al.thread;
  fake_samples[i].map = al.map;
  fake_samples[i].sym = al.sym;
 }

 return TEST_OK;

out:
 pr_debug("Not enough memory for adding a hist entry\n");
 return TEST_FAIL;
}
