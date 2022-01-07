
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;



__attribute__((used)) static u64 cake_ewma(u64 avg, u64 sample, u32 shift)
{
 avg -= avg >> shift;
 avg += sample >> shift;
 return avg;
}
