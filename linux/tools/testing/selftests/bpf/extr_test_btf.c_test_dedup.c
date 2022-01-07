
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int dedup_test_num; } ;


 unsigned int ARRAY_SIZE (int ) ;
 TYPE_1__ args ;
 int count_result (int ) ;
 int dedup_tests ;
 int do_test_dedup (unsigned int) ;

__attribute__((used)) static int test_dedup(void)
{
 unsigned int i;
 int err = 0;

 if (args.dedup_test_num)
  return count_result(do_test_dedup(args.dedup_test_num));

 for (i = 1; i <= ARRAY_SIZE(dedup_tests); i++)
  err |= count_result(do_test_dedup(i));

 return err;
}
