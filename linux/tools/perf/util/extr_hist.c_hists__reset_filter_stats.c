
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ total_non_filtered_period; } ;
struct hists {TYPE_1__ stats; scalar_t__ nr_non_filtered_entries; } ;



__attribute__((used)) static void hists__reset_filter_stats(struct hists *hists)
{
 hists->nr_non_filtered_entries = 0;
 hists->stats.total_non_filtered_period = 0;
}
