
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;



__attribute__((used)) static u32 prob_minus(u32 p1, u32 p2)
{
 return p1 > p2 ? p1 - p2 : 0;
}
