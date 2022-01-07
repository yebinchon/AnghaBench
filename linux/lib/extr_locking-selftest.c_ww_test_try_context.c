
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARN_ON (int) ;
 int WWAI (int *) ;
 int WWL (int *,int *) ;
 int WWT (int *) ;
 int o ;
 int o2 ;
 int t ;

__attribute__((used)) static void ww_test_try_context(void)
{
 int ret;

 ret = WWT(&o);
 WARN_ON(!ret);

 WWAI(&t);

 ret = WWL(&o2, &t);
 WARN_ON(ret);
}
