
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void test_ubsan_out_of_bounds(void)
{
 volatile int i = 4, j = 5;
 volatile int arr[4];

 arr[j] = i;
}
