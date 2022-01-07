
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARN_ON (int) ;
 int WWL1 (int *) ;
 int WWT (int *) ;
 int WWU (int *) ;
 int o ;
 int o2 ;

__attribute__((used)) static void ww_test_try_block(void)
{
 bool ret;

 ret = WWT(&o);
 WARN_ON(!ret);

 WWL1(&o2);
 WWU(&o2);
 WWU(&o);
}
