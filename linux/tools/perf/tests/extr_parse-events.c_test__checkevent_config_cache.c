
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evsel {int name; } ;
struct evlist {int dummy; } ;


 int TEST_ASSERT_VAL (char*,int) ;
 struct evsel* evlist__first (struct evlist*) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int test__checkevent_config_cache(struct evlist *evlist)
{
 struct evsel *evsel = evlist__first(evlist);

 TEST_ASSERT_VAL("wrong name setting", strcmp(evsel->name, "cachepmu") == 0);
 return 0;
}
