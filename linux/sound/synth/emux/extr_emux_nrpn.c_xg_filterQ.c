
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t FX_RESONANCE ;
 int* xg_sense ;

__attribute__((used)) static int xg_filterQ(int val)
{
 return (val - 64) * xg_sense[FX_RESONANCE] / 64;
}
