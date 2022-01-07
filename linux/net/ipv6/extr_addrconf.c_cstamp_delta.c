
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;


 unsigned long HZ ;
 unsigned long INITIAL_JIFFIES ;

__attribute__((used)) static inline u32 cstamp_delta(unsigned long cstamp)
{
 return (cstamp - INITIAL_JIFFIES) * 100UL / HZ;
}
