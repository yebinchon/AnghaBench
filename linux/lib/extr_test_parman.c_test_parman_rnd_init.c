
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_parman {int rnd; } ;


 int prandom_seed_state (int *,unsigned long long) ;

__attribute__((used)) static void test_parman_rnd_init(struct test_parman *test_parman)
{
 prandom_seed_state(&test_parman->rnd, 3141592653589793238ULL);
}
