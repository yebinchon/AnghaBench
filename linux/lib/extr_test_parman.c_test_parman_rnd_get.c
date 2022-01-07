
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct test_parman {int rnd; } ;


 int prandom_u32_state (int *) ;

__attribute__((used)) static u32 test_parman_rnd_get(struct test_parman *test_parman)
{
 return prandom_u32_state(&test_parman->rnd);
}
