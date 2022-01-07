
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WWAI (int *) ;
 int o ;
 int t ;
 int ww_mutex_lock_slow (int *,int *) ;

__attribute__((used)) static void ww_test_unneeded_slow(void)
{
 WWAI(&t);

 ww_mutex_lock_slow(&o, &t);
}
