
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ksft_pass; int ksft_fail; int ksft_xfail; int ksft_xpass; int ksft_xskip; int ksft_error; } ;


 TYPE_1__ ksft_cnt ;
 scalar_t__ ksft_plan ;
 int ksft_test_num () ;
 int printf (char*,int,int,...) ;

__attribute__((used)) static inline void ksft_print_cnts(void)
{
 if (ksft_plan != ksft_test_num())
  printf("# Planned tests != run tests (%u != %u)\n",
   ksft_plan, ksft_test_num());
 printf("# Pass %d Fail %d Xfail %d Xpass %d Skip %d Error %d\n",
  ksft_cnt.ksft_pass, ksft_cnt.ksft_fail,
  ksft_cnt.ksft_xfail, ksft_cnt.ksft_xpass,
  ksft_cnt.ksft_xskip, ksft_cnt.ksft_error);
}
