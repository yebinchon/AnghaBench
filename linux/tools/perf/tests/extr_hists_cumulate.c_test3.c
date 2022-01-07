
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct result {int member_0; int member_1; char* member_2; char* member_3; char* member_4; } ;
struct machine {int dummy; } ;
struct hists {int dummy; } ;
struct evsel {int dummy; } ;
struct TYPE_2__ {int use_callchain; int cumulate_callchain; } ;


 int ARRAY_SIZE (struct result*) ;
 int CALLCHAIN ;
 int add_hist_entries (struct hists*,struct machine*) ;
 int callchain_param ;
 int callchain_register_param (int *) ;
 int del_hist_entries (struct hists*) ;
 int do_test (struct hists*,struct result*,int ,int *,int ) ;
 struct hists* evsel__hists (struct evsel*) ;
 int perf_evsel__reset_sample_bit (struct evsel*,int ) ;
 int reset_output_field () ;
 int setup_sorting (int *) ;
 TYPE_1__ symbol_conf ;

__attribute__((used)) static int test3(struct evsel *evsel, struct machine *machine)
{
 int err;
 struct hists *hists = evsel__hists(evsel);
 struct result expected[] = {
  { 7000, 2000, "perf", "perf", "main" },
  { 5000, 0, "perf", "perf", "run_command" },
  { 3000, 1000, "bash", "bash", "main" },
  { 3000, 1000, "perf", "perf", "cmd_record" },
  { 2000, 0, "bash", "libc", "malloc" },
  { 1000, 1000, "bash", "[kernel]", "page_fault" },
  { 1000, 1000, "bash", "bash", "xmalloc" },
  { 1000, 1000, "perf", "[kernel]", "page_fault" },
  { 1000, 1000, "perf", "[kernel]", "schedule" },
  { 1000, 1000, "perf", "libc", "free" },
  { 1000, 1000, "perf", "libc", "malloc" },
  { 1000, 0, "perf", "[kernel]", "sys_perf_event_open" },
 };

 symbol_conf.use_callchain = 0;
 symbol_conf.cumulate_callchain = 1;
 perf_evsel__reset_sample_bit(evsel, CALLCHAIN);

 setup_sorting(((void*)0));
 callchain_register_param(&callchain_param);

 err = add_hist_entries(hists, machine);
 if (err < 0)
  goto out;

 err = do_test(hists, expected, ARRAY_SIZE(expected), ((void*)0), 0);

out:
 del_hist_entries(hists);
 reset_output_field();
 return err;
}
