
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INT_MAX ;

__attribute__((used)) static void test_ubsan_mul_overflow(void)
{
 volatile int val = INT_MAX / 2;

 val *= 3;
}
