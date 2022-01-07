
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t FX_VIBDEPTH ;
 int* gs_sense ;

__attribute__((used)) static int gs_vib_depth(int val)
{
 return (val - 64) * gs_sense[FX_VIBDEPTH] / 50;
}
