
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_inc (int *) ;
 int running_helpers ;
 int smp_mb__after_atomic () ;

__attribute__((used)) static void helper_lock(void)
{
 atomic_inc(&running_helpers);
 smp_mb__after_atomic();
}
