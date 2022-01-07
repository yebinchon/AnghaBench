
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vortex_t ;
typedef int u32 ;


 int NR_WT ;
 int NR_WT_PB ;
 int vortex_wt_SetReg (int *,int,int,int) ;

__attribute__((used)) static void vortex_wt_init(vortex_t * vortex)
{
 u32 var4, var8, varc, var10 = 0, edi;

 var10 &= 0xFFFFFFE3;
 var10 |= 0x22;
 var10 &= 0xFFFFFEBF;
 var10 |= 0x80;
 var10 |= 0x200;
 var10 &= 0xfffffffe;
 var10 &= 0xfffffbff;
 var10 |= 0x1800;

 var4 = 0x10000000;
 varc = 0x00830000;
 var8 = 0x00830000;


 for (edi = 0; edi < (NR_WT / NR_WT_PB); edi++) {
  vortex_wt_SetReg(vortex, 0xc, edi, 0);
  vortex_wt_SetReg(vortex, 0xa, edi, var10);
  vortex_wt_SetReg(vortex, 0x9, edi, var4);
  vortex_wt_SetReg(vortex, 0x8, edi, varc);
  vortex_wt_SetReg(vortex, 0x5, edi, var8);
 }

 for (edi = 0; edi < NR_WT; edi++) {
  vortex_wt_SetReg(vortex, 0x4, edi, 0);
  vortex_wt_SetReg(vortex, 0x3, edi, 0);
  vortex_wt_SetReg(vortex, 0x2, edi, 0);
  vortex_wt_SetReg(vortex, 0x1, edi, 0);
  vortex_wt_SetReg(vortex, 0xb, edi, 0);
 }
 var10 |= 1;
 for (edi = 0; edi < (NR_WT / NR_WT_PB); edi++)
  vortex_wt_SetReg(vortex, 0xa, edi, var10);
}
