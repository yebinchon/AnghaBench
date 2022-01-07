
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void test_ubsan_divrem_overflow(void)
{
 volatile int val = 16;
 volatile int val2 = 0;

 val /= val2;
}
