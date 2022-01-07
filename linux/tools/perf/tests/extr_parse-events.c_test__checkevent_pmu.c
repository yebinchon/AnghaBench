
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; int config; int config1; int config2; scalar_t__ sample_period; } ;
struct TYPE_5__ {TYPE_1__ attr; } ;
struct evsel {TYPE_2__ core; } ;
struct TYPE_6__ {int nr_entries; } ;
struct evlist {TYPE_3__ core; } ;


 scalar_t__ PERF_TYPE_RAW ;
 int TEST_ASSERT_VAL (char*,int) ;
 struct evsel* evlist__first (struct evlist*) ;

__attribute__((used)) static int test__checkevent_pmu(struct evlist *evlist)
{

 struct evsel *evsel = evlist__first(evlist);

 TEST_ASSERT_VAL("wrong number of entries", 1 == evlist->core.nr_entries);
 TEST_ASSERT_VAL("wrong type", PERF_TYPE_RAW == evsel->core.attr.type);
 TEST_ASSERT_VAL("wrong config", 10 == evsel->core.attr.config);
 TEST_ASSERT_VAL("wrong config1", 1 == evsel->core.attr.config1);
 TEST_ASSERT_VAL("wrong config2", 3 == evsel->core.attr.config2);




 TEST_ASSERT_VAL("wrong period", 0 == evsel->core.attr.sample_period);

 return 0;
}
