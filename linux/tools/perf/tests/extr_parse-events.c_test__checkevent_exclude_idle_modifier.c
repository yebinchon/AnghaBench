
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int exclude_idle; int precise_ip; int exclude_hv; int exclude_kernel; int exclude_user; int exclude_host; int exclude_guest; } ;
struct TYPE_3__ {TYPE_2__ attr; } ;
struct evsel {TYPE_1__ core; } ;
struct evlist {int dummy; } ;


 int TEST_ASSERT_VAL (char*,int) ;
 struct evsel* evlist__first (struct evlist*) ;
 int test__checkevent_symbolic_name (struct evlist*) ;

__attribute__((used)) static int test__checkevent_exclude_idle_modifier(struct evlist *evlist)
{
 struct evsel *evsel = evlist__first(evlist);

 TEST_ASSERT_VAL("wrong exclude idle", evsel->core.attr.exclude_idle);
 TEST_ASSERT_VAL("wrong exclude guest", !evsel->core.attr.exclude_guest);
 TEST_ASSERT_VAL("wrong exclude host", !evsel->core.attr.exclude_host);
 TEST_ASSERT_VAL("wrong exclude_user", !evsel->core.attr.exclude_user);
 TEST_ASSERT_VAL("wrong exclude_kernel", !evsel->core.attr.exclude_kernel);
 TEST_ASSERT_VAL("wrong exclude_hv", !evsel->core.attr.exclude_hv);
 TEST_ASSERT_VAL("wrong precise_ip", !evsel->core.attr.precise_ip);

 return test__checkevent_symbolic_name(evlist);
}
