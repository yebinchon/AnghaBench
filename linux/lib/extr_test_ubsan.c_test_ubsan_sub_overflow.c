
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INT_MIN ;

__attribute__((used)) static void test_ubsan_sub_overflow(void)
{
 volatile int val = INT_MIN;
 volatile int val2 = 2;

 val -= val2;
}
