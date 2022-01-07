
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int exclude_guest; int exclude_host; } ;
struct TYPE_4__ {TYPE_1__ attr; } ;
struct evsel {TYPE_2__ core; } ;
struct evlist {int dummy; } ;


 int TEST_ASSERT_VAL (char*,int) ;
 struct evsel* evlist__first (struct evlist*) ;
 int test__checkevent_symbolic_name (struct evlist*) ;

__attribute__((used)) static int test__checkevent_exclude_guest_modifier(struct evlist *evlist)
{
 struct evsel *evsel = evlist__first(evlist);

 TEST_ASSERT_VAL("wrong exclude guest", evsel->core.attr.exclude_guest);
 TEST_ASSERT_VAL("wrong exclude host", !evsel->core.attr.exclude_host);

 return test__checkevent_symbolic_name(evlist);
}
