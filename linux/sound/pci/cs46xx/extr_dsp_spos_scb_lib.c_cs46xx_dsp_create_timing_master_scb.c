
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct snd_cs46xx {int dummy; } ;
struct TYPE_4__ {int member_4; int member_3; int member_2; int member_1; int member_0; } ;
struct TYPE_3__ {int member_3; int member_2; int member_1; int member_0; } ;
struct dsp_timing_master_scb {int member_10; int member_11; int member_12; int member_13; int member_14; int member_9; int member_8; int member_7; int member_6; int member_5; int member_4; int member_3; int member_2; TYPE_2__ member_1; TYPE_1__ member_0; } ;
struct dsp_scb_descriptor {int dummy; } ;


 int NULL_SCB_ADDR ;
 int SCB_NO_PARENT ;
 int TIMINGMASTER_SCB_ADDR ;
 struct dsp_scb_descriptor* cs46xx_dsp_create_generic_scb (struct snd_cs46xx*,char*,int *,int ,char*,int *,int ) ;

struct dsp_scb_descriptor *
cs46xx_dsp_create_timing_master_scb (struct snd_cs46xx *chip)
{
 struct dsp_scb_descriptor * scb;

 struct dsp_timing_master_scb timing_master_scb = {
  { 0,
    0,
    0,
    0
  },
  { 0,
    0,
    0,
    0,
    0
  },
  0,0,
  0,NULL_SCB_ADDR,
  0,0,
  0,0,
  0x0001,0x8000,
  0x0001,0x0000,
  0x00060000
 };

 scb = cs46xx_dsp_create_generic_scb(chip,"TimingMasterSCBInst",(u32 *)&timing_master_scb,
         TIMINGMASTER_SCB_ADDR,
         "TIMINGMASTER",((void*)0),SCB_NO_PARENT);

 return scb;
}
