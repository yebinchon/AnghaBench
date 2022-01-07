
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_parman_prio {int parman_prio; } ;
struct test_parman {struct test_parman_prio* prios; } ;


 int TEST_PARMAN_PRIO_COUNT ;
 int parman_prio_fini (int *) ;

__attribute__((used)) static void test_parman_prios_fini(struct test_parman *test_parman)
{
 int i;

 for (i = 0; i < TEST_PARMAN_PRIO_COUNT; i++) {
  struct test_parman_prio *prio = &test_parman->prios[i];

  parman_prio_fini(&prio->parman_prio);
 }
}
