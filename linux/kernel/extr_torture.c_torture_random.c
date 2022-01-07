
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct torture_random_state {scalar_t__ trs_count; unsigned long trs_state; } ;


 int TORTURE_RANDOM_ADD ;
 int TORTURE_RANDOM_MULT ;
 scalar_t__ TORTURE_RANDOM_REFRESH ;
 scalar_t__ local_clock () ;
 unsigned long swahw32 (int) ;

unsigned long
torture_random(struct torture_random_state *trsp)
{
 if (--trsp->trs_count < 0) {
  trsp->trs_state += (unsigned long)local_clock();
  trsp->trs_count = TORTURE_RANDOM_REFRESH;
 }
 trsp->trs_state = trsp->trs_state * TORTURE_RANDOM_MULT +
  TORTURE_RANDOM_ADD;
 return swahw32(trsp->trs_state);
}
