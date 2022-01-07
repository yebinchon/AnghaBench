
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARN_ON (int) ;
 int WWAI (int *) ;
 int WWL (int *,int *) ;
 int WWL1 (int *) ;
 int o ;
 int o2 ;
 int t ;

__attribute__((used)) static void ww_test_block_context(void)
{
 int ret;

 WWL1(&o);
 WWAI(&t);

 ret = WWL(&o2, &t);
 WARN_ON(ret);
}
