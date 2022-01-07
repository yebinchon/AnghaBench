
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* desc; } ;


 scalar_t__ ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* wp_testcase_table ;

const char *test__wp_subtest_get_desc(int i)
{
 if (i < 0 || i >= (int)ARRAY_SIZE(wp_testcase_table))
  return ((void*)0);
 return wp_testcase_table[i].desc;
}
