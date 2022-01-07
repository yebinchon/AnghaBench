
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int overlap(int min1, int max1, int min2, int max2)
{
 return max1 > min2 && min1 < max2;
}
