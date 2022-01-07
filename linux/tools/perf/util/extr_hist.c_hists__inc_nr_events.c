
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hists {int stats; } ;


 int events_stats__inc (int *,int ) ;

void hists__inc_nr_events(struct hists *hists, u32 type)
{
 events_stats__inc(&hists->stats, type);
}
