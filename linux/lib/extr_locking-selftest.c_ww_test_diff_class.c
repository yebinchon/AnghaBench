
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * ww_class; } ;


 int WWAI (TYPE_1__*) ;
 int WWL (int *,TYPE_1__*) ;
 int o ;
 TYPE_1__ t ;

__attribute__((used)) static void ww_test_diff_class(void)
{
 WWAI(&t);



 WWL(&o, &t);
}
