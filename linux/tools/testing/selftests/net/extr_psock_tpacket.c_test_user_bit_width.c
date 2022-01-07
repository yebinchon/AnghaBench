
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __WORDSIZE ;

__attribute__((used)) static int test_user_bit_width(void)
{
 return __WORDSIZE;
}
