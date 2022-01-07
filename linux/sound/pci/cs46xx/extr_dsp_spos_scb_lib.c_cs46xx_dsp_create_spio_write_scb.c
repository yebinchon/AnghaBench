
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct snd_cs46xx {int dummy; } ;
struct TYPE_4__ {int member_4; int member_3; int member_2; int member_1; int member_0; } ;
struct TYPE_3__ {int member_1; int member_0; } ;
struct dsp_spio_write_scb {TYPE_2__ member_15; int member_14; int member_13; int member_12; int member_11; TYPE_1__ member_10; int member_9; int member_8; int member_7; int member_6; int member_5; int member_4; int member_3; int member_2; int member_1; int member_0; } ;
struct dsp_scb_descriptor {int dummy; } ;


 struct dsp_scb_descriptor* cs46xx_dsp_create_generic_scb (struct snd_cs46xx*,char*,int *,int ,char*,struct dsp_scb_descriptor*,int) ;

struct dsp_scb_descriptor *
cs46xx_dsp_create_spio_write_scb(struct snd_cs46xx * chip, char * scb_name, u32 dest,
                                 struct dsp_scb_descriptor * parent_scb,
                                 int scb_child_type)
{
 struct dsp_scb_descriptor * scb;

 struct dsp_spio_write_scb spio_write_scb = {
  0,0,
  0,
  0,
  0,0,
  0,
  0,
  0,0,
  { 0,0 },

  0,0,
  0,0,

  {
   0,
   0,
   0,
   0,
   0
  }
 };

 scb = cs46xx_dsp_create_generic_scb(chip,scb_name,(u32 *)&spio_write_scb,
         dest,"SPIOWRITE",parent_scb,
         scb_child_type);

 return scb;
}
