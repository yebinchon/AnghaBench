
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int base; } ;


 int A ;
 int U (int ) ;
 int lock_A ;
 TYPE_1__ o ;
 int raw_spin_lock_nest_lock (int *,int *) ;

__attribute__((used)) static void ww_test_spin_nest_unlocked(void)
{
 raw_spin_lock_nest_lock(&lock_A, &o.base);
 U(A);
}
