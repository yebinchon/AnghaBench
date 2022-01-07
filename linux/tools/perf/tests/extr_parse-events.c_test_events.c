
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evlist_test {int name; int id; } ;


 int pr_debug (char*,...) ;
 int test_event (struct evlist_test*) ;

__attribute__((used)) static int test_events(struct evlist_test *events, unsigned cnt)
{
 int ret1, ret2 = 0;
 unsigned i;

 for (i = 0; i < cnt; i++) {
  struct evlist_test *e = &events[i];

  pr_debug("running test %d '%s'", e->id, e->name);
  ret1 = test_event(e);
  if (ret1)
   ret2 = ret1;
  pr_debug("\n");
 }

 return ret2;
}
