
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int pr_info (char*,unsigned int) ;
 int pr_warn (char*,unsigned int,unsigned int) ;

__attribute__((used)) static inline int kstm_report(unsigned int total_tests, unsigned int failed_tests)
{
 if (failed_tests == 0)
  pr_info("all %u tests passed\n", total_tests);
 else
  pr_warn("failed %u out of %u tests\n", failed_tests, total_tests);

 return failed_tests ? -EINVAL : 0;
}
