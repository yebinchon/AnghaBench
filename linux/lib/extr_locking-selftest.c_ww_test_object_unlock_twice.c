
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WWL1 (int *) ;
 int WWU (int *) ;
 int o ;

__attribute__((used)) static void ww_test_object_unlock_twice(void)
{
 WWL1(&o);
 WWU(&o);
 WWU(&o);
}
