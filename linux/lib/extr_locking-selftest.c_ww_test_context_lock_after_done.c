
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WWAD (int *) ;
 int WWAI (int *) ;
 int WWL (int *,int *) ;
 int o ;
 int t ;

__attribute__((used)) static void ww_test_context_lock_after_done(void)
{
 WWAI(&t);
 WWAD(&t);
 WWL(&o, &t);
}
