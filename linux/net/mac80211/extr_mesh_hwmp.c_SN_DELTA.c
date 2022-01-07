
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;



__attribute__((used)) static inline u32 SN_DELTA(u32 x, u32 y)
{
 return x >= y ? x - y : y - x;
}
