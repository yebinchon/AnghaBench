
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_parman_prio {int priority; int parman_prio; } ;
struct test_parman {int parman; struct test_parman_prio* prios; } ;


 int TEST_PARMAN_PRIO_COUNT ;
 int parman_prio_init (int ,int *,int ) ;
 int test_parman_priority_gen (struct test_parman*) ;

__attribute__((used)) static void test_parman_prios_init(struct test_parman *test_parman)
{
 int i;

 for (i = 0; i < TEST_PARMAN_PRIO_COUNT; i++) {
  struct test_parman_prio *prio = &test_parman->prios[i];


  prio->priority = test_parman_priority_gen(test_parman);
  parman_prio_init(test_parman->parman, &prio->parman_prio,
     prio->priority);
 }
}
