
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int branch_stack; } ;
struct perf_top {TYPE_1__ record_opts; } ;
struct hist_entry_iter {TYPE_2__* sample; struct evsel* evsel; struct hist_entry* he; } ;
struct hist_entry {int dummy; } ;
struct evsel {int dummy; } ;
struct addr_location {int addr; } ;
struct TYPE_7__ {scalar_t__ sym; } ;
struct TYPE_6__ {int branch_stack; } ;


 int PERF_SAMPLE_BRANCH_ANY ;
 int hist__account_cycles (int ,struct addr_location*,TYPE_2__*,int) ;
 TYPE_3__ perf_hpp_list ;
 int perf_top__record_precise_ip (struct perf_top*,struct hist_entry*,TYPE_2__*,struct evsel*,int ) ;

__attribute__((used)) static int hist_iter__top_callback(struct hist_entry_iter *iter,
       struct addr_location *al, bool single,
       void *arg)
{
 struct perf_top *top = arg;
 struct hist_entry *he = iter->he;
 struct evsel *evsel = iter->evsel;

 if (perf_hpp_list.sym && single)
  perf_top__record_precise_ip(top, he, iter->sample, evsel, al->addr);

 hist__account_cycles(iter->sample->branch_stack, al, iter->sample,
       !(top->record_opts.branch_stack & PERF_SAMPLE_BRANCH_ANY));
 return 0;
}
