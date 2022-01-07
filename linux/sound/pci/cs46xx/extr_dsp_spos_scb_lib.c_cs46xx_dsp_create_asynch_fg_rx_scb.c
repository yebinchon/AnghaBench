
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct snd_cs46xx {struct dsp_spos_instance* dsp_spos_instance; } ;
struct dsp_spos_instance {int spdif_input_volume_left; int spdif_input_volume_right; } ;
struct dsp_scb_descriptor {int dummy; } ;
struct TYPE_2__ {int member_4; int member_3; int member_2; int member_1; int member_0; } ;
struct dsp_asynch_fg_rx_scb {int member_0; int member_1; int member_2; int member_3; int member_13; int member_14; int member_15; int member_19; int member_18; int member_17; int member_16; int member_12; int member_11; int member_10; int member_9; TYPE_1__ member_8; int member_7; int member_6; int member_5; int member_4; } ;


 int RSCONFIG_MODULO_128 ;
 int RSCONFIG_SAMPLE_16STEREO ;
 struct dsp_scb_descriptor* cs46xx_dsp_create_generic_scb (struct snd_cs46xx*,char*,int *,int ,char*,struct dsp_scb_descriptor*,int) ;

struct dsp_scb_descriptor *
cs46xx_dsp_create_asynch_fg_rx_scb(struct snd_cs46xx * chip, char * scb_name, u32 dest,
                                   u16 hfg_scb_address,
                                   u16 asynch_buffer_address,
                                   struct dsp_scb_descriptor * parent_scb,
                                   int scb_child_type)
{
 struct dsp_spos_instance * ins = chip->dsp_spos_instance;
 struct dsp_scb_descriptor * scb;

 struct dsp_asynch_fg_rx_scb asynch_fg_rx_scb = {
  0xfe00,0x01ff,
  0x0064,0x001c,

  0,hfg_scb_address,
  0,0,
  {
   0,
   0,
   0,
   0,
   0
  },

  0,0,
  0,dest,

  RSCONFIG_MODULO_128 |
        RSCONFIG_SAMPLE_16STEREO,
  ( (asynch_buffer_address + (16 * 4)) << 0x10),




  0x18000000,


  0xffff - ins->spdif_input_volume_right,0xffff - ins->spdif_input_volume_left,
  0xffff - ins->spdif_input_volume_right,0xffff - ins->spdif_input_volume_left,
 };

 scb = cs46xx_dsp_create_generic_scb(chip,scb_name,(u32 *)&asynch_fg_rx_scb,
         dest,"ASYNCHFGRXCODE",parent_scb,
         scb_child_type);

 return scb;
}
