
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ARRAY_SIZE (int ) ;
 int wp_testcase_table ;

int test__wp_subtest_get_nr(void)
{
 return (int)ARRAY_SIZE(wp_testcase_table);
}
