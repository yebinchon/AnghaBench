
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {int test_filters; } ;



void tep_set_test_filters(struct tep_handle *tep, int test_filters)
{
 if (tep)
  tep->test_filters = test_filters;
}
