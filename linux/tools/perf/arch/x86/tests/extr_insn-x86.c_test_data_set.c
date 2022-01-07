
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_data {scalar_t__ expected_length; } ;


 scalar_t__ test_data_item (struct test_data*,int) ;

__attribute__((used)) static int test_data_set(struct test_data *dat_set, int x86_64)
{
 struct test_data *dat;
 int ret = 0;

 for (dat = dat_set; dat->expected_length; dat++) {
  if (test_data_item(dat, x86_64))
   ret = -1;
 }

 return ret;
}
