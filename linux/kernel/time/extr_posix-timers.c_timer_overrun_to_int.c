
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct k_itimer {scalar_t__ it_overrun_last; } ;
typedef scalar_t__ s64 ;


 int INT_MAX ;

__attribute__((used)) static inline int timer_overrun_to_int(struct k_itimer *timr, int baseval)
{
 s64 sum = timr->it_overrun_last + (s64)baseval;

 return sum > (s64)INT_MAX ? INT_MAX : (int)sum;
}
