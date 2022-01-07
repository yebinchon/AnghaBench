
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t FX_RESONANCE ;
 int* gs_sense ;

__attribute__((used)) static int gs_filterQ(int val)
{
 return (val - 64) * gs_sense[FX_RESONANCE] / 50;
}
