
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ acquired; } ;


 int WWAF (TYPE_1__*) ;
 int WWAI (TYPE_1__*) ;
 int WWL (int *,TYPE_1__*) ;
 int WWU (int *) ;
 int o ;
 TYPE_1__ t ;

__attribute__((used)) static void ww_test_object_lock_unbalanced(void)
{
 WWAI(&t);
 WWL(&o, &t);
 t.acquired = 0;
 WWU(&o);
 WWAF(&t);
}
