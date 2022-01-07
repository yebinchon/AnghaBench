
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;


 int CYCLES_PER_SECOND ;

__attribute__((used)) static inline u32 increment_cycle_count(u32 cycle, unsigned int addend)
{
 cycle += addend;
 if (cycle >= 8 * CYCLES_PER_SECOND)
  cycle -= 8 * CYCLES_PER_SECOND;
 return cycle;
}
