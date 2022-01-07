
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ priority_t ;



__attribute__((used)) static inline u32 j1939_to_sk_priority(priority_t prio)
{
 return 7 - prio;
}
