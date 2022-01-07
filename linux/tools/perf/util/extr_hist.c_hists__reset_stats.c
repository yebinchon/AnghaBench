
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ total_period; } ;
struct hists {TYPE_1__ stats; scalar_t__ nr_entries; } ;


 int hists__reset_filter_stats (struct hists*) ;

void hists__reset_stats(struct hists *hists)
{
 hists->nr_entries = 0;
 hists->stats.total_period = 0;

 hists__reset_filter_stats(hists);
}
