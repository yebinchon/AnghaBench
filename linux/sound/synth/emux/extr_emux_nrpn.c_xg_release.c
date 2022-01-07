
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t FX_RELEASE ;
 int* xg_sense ;

__attribute__((used)) static int xg_release(int val)
{
 return -(val - 64) * xg_sense[FX_RELEASE] / 64;
}
