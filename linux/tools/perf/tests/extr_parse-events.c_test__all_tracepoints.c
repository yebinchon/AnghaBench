
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ nr_entries; } ;
struct evlist {TYPE_1__ core; } ;


 int TEST_ASSERT_VAL (char*,int) ;
 scalar_t__ count_tracepoints () ;
 int test__checkevent_tracepoint_multi (struct evlist*) ;

__attribute__((used)) static int test__all_tracepoints(struct evlist *evlist)
{
 TEST_ASSERT_VAL("wrong events count",
   count_tracepoints() == evlist->core.nr_entries);

 return test__checkevent_tracepoint_multi(evlist);
}
