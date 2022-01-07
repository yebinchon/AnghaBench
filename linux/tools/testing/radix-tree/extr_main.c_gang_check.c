
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __gang_check (int,int,int,int,int) ;

void gang_check(void)
{
 __gang_check(1UL << 30, 128, 128, 35, 2);
 __gang_check(1UL << 31, 128, 128, 32, 32);
 __gang_check(1UL << 31, 128, 128, 32, 100);
 __gang_check(1UL << 31, 128, 128, 17, 7);
 __gang_check(0xffff0000UL, 0, 65536, 17, 7);
 __gang_check(0xfffffffeUL, 1, 1, 17, 7);
}
