
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARN_ON (int) ;
 int WWAI (int *) ;
 int WWL (int *,int *) ;
 int WWT (int *) ;
 int WWU (int *) ;
 int o ;
 int o2 ;
 int t ;

__attribute__((used)) static void ww_test_context_try(void)
{
 int ret;

 WWAI(&t);

 ret = WWL(&o, &t);
 WARN_ON(ret);

 ret = WWT(&o2);
 WARN_ON(!ret);
 WWU(&o2);
 WWU(&o);
}
