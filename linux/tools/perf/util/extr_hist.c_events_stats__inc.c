
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct events_stats {int * nr_events; } ;



void events_stats__inc(struct events_stats *stats, u32 type)
{
 ++stats->nr_events[0];
 ++stats->nr_events[type];
}
