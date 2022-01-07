
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int idr_find_test_1 (int,int) ;

void idr_find_test(void)
{
 idr_find_test_1(100000, 0);
 idr_find_test_1(0, 100000);
}
