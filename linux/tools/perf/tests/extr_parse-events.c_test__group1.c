
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ type; scalar_t__ config; int exclude_user; int exclude_kernel; int exclude_hv; int exclude_guest; int precise_ip; int exclude_host; } ;
struct TYPE_6__ {int nr_members; TYPE_2__ attr; } ;
struct evsel {int sample_read; struct evsel* leader; TYPE_3__ core; } ;
struct TYPE_4__ {int nr_entries; } ;
struct evlist {int nr_groups; TYPE_1__ core; } ;


 scalar_t__ PERF_COUNT_HW_CPU_CYCLES ;
 scalar_t__ PERF_COUNT_HW_INSTRUCTIONS ;
 scalar_t__ PERF_TYPE_HARDWARE ;
 int TEST_ASSERT_VAL (char*,int) ;
 struct evsel* evlist__first (struct evlist*) ;
 int perf_evsel__group_idx (struct evsel*) ;
 int perf_evsel__is_group_leader (struct evsel*) ;
 struct evsel* perf_evsel__next (struct evsel*) ;

__attribute__((used)) static int test__group1(struct evlist *evlist)
{
 struct evsel *evsel, *leader;

 TEST_ASSERT_VAL("wrong number of entries", 2 == evlist->core.nr_entries);
 TEST_ASSERT_VAL("wrong number of groups", 1 == evlist->nr_groups);


 evsel = leader = evlist__first(evlist);
 TEST_ASSERT_VAL("wrong type", PERF_TYPE_HARDWARE == evsel->core.attr.type);
 TEST_ASSERT_VAL("wrong config",
   PERF_COUNT_HW_INSTRUCTIONS == evsel->core.attr.config);
 TEST_ASSERT_VAL("wrong exclude_user", evsel->core.attr.exclude_user);
 TEST_ASSERT_VAL("wrong exclude_kernel", !evsel->core.attr.exclude_kernel);
 TEST_ASSERT_VAL("wrong exclude_hv", evsel->core.attr.exclude_hv);
 TEST_ASSERT_VAL("wrong exclude guest", !evsel->core.attr.exclude_guest);
 TEST_ASSERT_VAL("wrong exclude host", !evsel->core.attr.exclude_host);
 TEST_ASSERT_VAL("wrong precise_ip", !evsel->core.attr.precise_ip);
 TEST_ASSERT_VAL("wrong leader", perf_evsel__is_group_leader(evsel));
 TEST_ASSERT_VAL("wrong core.nr_members", evsel->core.nr_members == 2);
 TEST_ASSERT_VAL("wrong group_idx", perf_evsel__group_idx(evsel) == 0);
 TEST_ASSERT_VAL("wrong sample_read", !evsel->sample_read);


 evsel = perf_evsel__next(evsel);
 TEST_ASSERT_VAL("wrong type", PERF_TYPE_HARDWARE == evsel->core.attr.type);
 TEST_ASSERT_VAL("wrong config",
   PERF_COUNT_HW_CPU_CYCLES == evsel->core.attr.config);
 TEST_ASSERT_VAL("wrong exclude_user", !evsel->core.attr.exclude_user);
 TEST_ASSERT_VAL("wrong exclude_kernel", evsel->core.attr.exclude_kernel);
 TEST_ASSERT_VAL("wrong exclude_hv", evsel->core.attr.exclude_hv);

 TEST_ASSERT_VAL("wrong exclude guest", evsel->core.attr.exclude_guest);
 TEST_ASSERT_VAL("wrong exclude host", !evsel->core.attr.exclude_host);
 TEST_ASSERT_VAL("wrong precise_ip", evsel->core.attr.precise_ip == 2);
 TEST_ASSERT_VAL("wrong leader", evsel->leader == leader);
 TEST_ASSERT_VAL("wrong group_idx", perf_evsel__group_idx(evsel) == 1);
 TEST_ASSERT_VAL("wrong sample_read", !evsel->sample_read);

 return 0;
}
