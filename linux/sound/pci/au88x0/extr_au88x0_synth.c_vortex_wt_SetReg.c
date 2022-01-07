
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int mmio; TYPE_1__* card; } ;
typedef TYPE_2__ vortex_t ;
typedef int u32 ;
struct TYPE_4__ {int dev; } ;


 int NR_WT ;
 int NR_WT_PB ;
 int WT_ARAMP (int) ;
 int WT_CTRL (int) ;
 int WT_DELAY (int,int) ;
 int WT_DSREG (int) ;
 int WT_MRAMP (int) ;
 int WT_MUTE (int) ;
 int WT_PARM (int,int) ;
 int WT_RUN (int) ;
 int WT_SRAMP (int) ;
 int dev_err (int ,char*) ;
 int dev_warn (int ,char*,unsigned char,int) ;
 int hwwrite (int ,int,int ) ;

__attribute__((used)) static int
vortex_wt_SetReg(vortex_t * vortex, unsigned char reg, int wt,
   u32 val)
{
 int ecx;

 if ((reg == 5) || ((reg >= 7) && (reg <= 10)) || (reg == 0xc)) {
  if (wt >= (NR_WT / NR_WT_PB)) {
   dev_warn(vortex->card->dev,
     "WT SetReg: bank out of range. reg=0x%x, wt=%d\n",
     reg, wt);
   return 0;
  }
 } else {
  if (wt >= NR_WT) {
   dev_err(vortex->card->dev,
    "WT SetReg: voice out of range\n");
   return 0;
  }
 }
 if (reg > 0xc)
  return 0;

 switch (reg) {

 case 0:




  hwwrite(vortex->mmio, WT_RUN(wt), val);
  return 0xc;
 case 1:




  hwwrite(vortex->mmio, WT_PARM(wt, 0), val);
  return 0xc;
 case 2:




  hwwrite(vortex->mmio, WT_PARM(wt, 1), val);
  return 0xc;
 case 3:




  hwwrite(vortex->mmio, WT_PARM(wt, 2), val);
  return 0xc;
 case 4:




  hwwrite(vortex->mmio, WT_PARM(wt, 3), val);
  return 0xc;
 case 6:




  hwwrite(vortex->mmio, WT_MUTE(wt), val);
  return 0xc;
 case 0xb:





  hwwrite(vortex->mmio, WT_DELAY(wt, 3), val);
  hwwrite(vortex->mmio, WT_DELAY(wt, 2), val);
  hwwrite(vortex->mmio, WT_DELAY(wt, 1), val);
  hwwrite(vortex->mmio, WT_DELAY(wt, 0), val);
  return 0xc;

 case 5:
  ecx = WT_SRAMP(wt);
  break;
 case 8:
  ecx = WT_ARAMP(wt);
  break;
 case 9:
  ecx = WT_MRAMP(wt);
  break;
 case 0xa:
  ecx = WT_CTRL(wt);
  break;
 case 0xc:
  ecx = WT_DSREG(wt);
  break;
 default:
  return 0;
 }



 hwwrite(vortex->mmio, ecx, val);
 return 1;
}
