
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void test_ubsan_shift_out_of_bounds(void)
{
 volatile int val = -1;
 int val2 = 10;

 val2 <<= val;
}
