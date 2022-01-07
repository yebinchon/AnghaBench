
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sec_name_test {int dummy; } ;


 scalar_t__ test_attach_type_by_name (struct sec_name_test const*) ;
 scalar_t__ test_prog_type_by_name (struct sec_name_test const*) ;

__attribute__((used)) static int run_test_case(const struct sec_name_test *test)
{
 if (test_prog_type_by_name(test))
  return -1;
 if (test_attach_type_by_name(test))
  return -1;
 return 0;
}
