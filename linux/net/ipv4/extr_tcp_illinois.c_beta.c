
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BETA_MAX ;
 int BETA_MIN ;

__attribute__((used)) static u32 beta(u32 da, u32 dm)
{
 u32 d2, d3;

 d2 = dm / 10;
 if (da <= d2)
  return BETA_MIN;

 d3 = (8 * dm) / 10;
 if (da >= d3 || d3 <= d2)
  return BETA_MAX;
 return (BETA_MIN * d3 - BETA_MAX * d2 + (BETA_MAX - BETA_MIN) * da)
  / (d3 - d2);
}
