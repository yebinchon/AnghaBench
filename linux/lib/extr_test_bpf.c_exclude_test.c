
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* test_range ;

__attribute__((used)) static bool exclude_test(int test_id)
{
 return test_id < test_range[0] || test_id > test_range[1];
}
