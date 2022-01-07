
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ready ;
 int test_attr__enabled ;
 scalar_t__ unlikely (int ) ;

void test_attr__ready(void)
{
 if (unlikely(test_attr__enabled) && !ready)
  ready = 1;
}
