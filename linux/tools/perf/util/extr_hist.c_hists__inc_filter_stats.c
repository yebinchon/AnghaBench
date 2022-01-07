
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int total_non_filtered_period; } ;
struct hists {TYPE_1__ stats; int nr_non_filtered_entries; } ;
struct TYPE_4__ {scalar_t__ period; } ;
struct hist_entry {TYPE_2__ stat; } ;



__attribute__((used)) static void hists__inc_filter_stats(struct hists *hists, struct hist_entry *h)
{
 hists->nr_non_filtered_entries++;
 hists->stats.total_non_filtered_period += h->stat.period;
}
