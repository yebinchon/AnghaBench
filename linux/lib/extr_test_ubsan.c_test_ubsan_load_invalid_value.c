
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void test_ubsan_load_invalid_value(void)
{
 volatile char *dst, *src;
 bool val, val2, *ptr;
 char c = 4;

 dst = (char *)&val;
 src = &c;
 *dst = *src;

 ptr = &val2;
 val2 = val;
}
