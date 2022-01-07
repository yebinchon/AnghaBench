
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ctx; } ;


 int WWAI (int *) ;
 int WWL (TYPE_1__*,int *) ;
 TYPE_1__ o ;
 int t ;
 int t2 ;

__attribute__((used)) static void ww_test_object_lock_stale_context(void)
{
 WWAI(&t);
 o.ctx = &t2;
 WWL(&o, &t);
}
