
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct report {scalar_t__ group_set; } ;
struct evlist {int dummy; } ;


 int perf_evlist__force_leader (struct evlist*) ;

__attribute__((used)) static void setup_forced_leader(struct report *report,
    struct evlist *evlist)
{
 if (report->group_set)
  perf_evlist__force_leader(evlist);
}
