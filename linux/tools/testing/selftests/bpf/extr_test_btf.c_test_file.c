
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int file_test_num; } ;


 unsigned int ARRAY_SIZE (int ) ;
 TYPE_1__ args ;
 int count_result (int ) ;
 int do_test_file (unsigned int) ;
 int file_tests ;

__attribute__((used)) static int test_file(void)
{
 unsigned int i;
 int err = 0;

 if (args.file_test_num)
  return count_result(do_test_file(args.file_test_num));

 for (i = 1; i <= ARRAY_SIZE(file_tests); i++)
  err |= count_result(do_test_file(i));

 return err;
}
