
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WWAD (int *) ;
 int WWAF (int *) ;
 int WWAI (int *) ;
 int WWL (int *,int *) ;
 int o ;
 int t ;

__attribute__((used)) static void ww_test_context_fini_early(void)
{
 WWAI(&t);
 WWL(&o, &t);
 WWAD(&t);
 WWAF(&t);
}
