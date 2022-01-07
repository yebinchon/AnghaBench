
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void test_ubsan_null_ptr_deref(void)
{
 volatile int *ptr = ((void*)0);
 int val;

 val = *ptr;
}
