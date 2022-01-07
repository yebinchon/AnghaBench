
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nr_non_filtered_samples; } ;
struct hists {TYPE_1__ stats; } ;


 int PERF_RECORD_SAMPLE ;
 int events_stats__inc (TYPE_1__*,int ) ;

void hists__inc_nr_samples(struct hists *hists, bool filtered)
{
 events_stats__inc(&hists->stats, PERF_RECORD_SAMPLE);
 if (!filtered)
  hists->stats.nr_non_filtered_samples++;
}
