
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARN_ON (int) ;
 int WWL1 (int *) ;
 int WWT (int *) ;
 int o ;
 int o2 ;

__attribute__((used)) static void ww_test_block_try(void)
{
 bool ret;

 WWL1(&o);
 ret = WWT(&o2);
 WARN_ON(!ret);
}
