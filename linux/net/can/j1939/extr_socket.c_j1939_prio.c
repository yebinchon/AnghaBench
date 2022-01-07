
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ priority_t ;


 scalar_t__ min (scalar_t__,unsigned int) ;

__attribute__((used)) static inline priority_t j1939_prio(u32 sk_priority)
{
 sk_priority = min(sk_priority, 7U);

 return 7 - sk_priority;
}
