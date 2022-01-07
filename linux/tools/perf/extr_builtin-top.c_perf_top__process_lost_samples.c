
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ lost; } ;
union perf_event {TYPE_2__ lost_samples; } ;
struct perf_top {int lost_total; int lost; } ;
struct TYPE_3__ {int total_lost_samples; } ;
struct hists {TYPE_1__ stats; } ;
struct evsel {int dummy; } ;


 struct hists* evsel__hists (struct evsel*) ;

__attribute__((used)) static void
perf_top__process_lost_samples(struct perf_top *top,
          union perf_event *event,
          struct evsel *evsel)
{
 struct hists *hists = evsel__hists(evsel);

 top->lost += event->lost_samples.lost;
 top->lost_total += event->lost_samples.lost;
 hists->stats.total_lost_samples += event->lost_samples.lost;
}
