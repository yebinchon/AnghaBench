
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct snd_cs46xx {int dummy; } ;
struct dsp_scb_descriptor {int address; } ;
struct TYPE_2__ {int member_0; int member_1; int member_2; int member_3; } ;
struct dsp_magic_snoop_task {int member_2; int member_15; TYPE_1__ member_17; int member_16; scalar_t__ member_14; int member_13; int member_12; int member_11; int member_10; int member_9; int member_8; int member_7; int member_6; int member_5; int member_4; int member_3; int member_1; int member_0; } ;


 scalar_t__ RSCONFIG_MODULO_64 ;
 scalar_t__ RSCONFIG_SAMPLE_16STEREO ;
 struct dsp_scb_descriptor* cs46xx_dsp_create_generic_scb (struct snd_cs46xx*,char*,int *,int ,char*,struct dsp_scb_descriptor*,int) ;

struct dsp_scb_descriptor *
cs46xx_dsp_create_magic_snoop_scb(struct snd_cs46xx * chip, char * scb_name, u32 dest,
      u16 snoop_buffer_address,
      struct dsp_scb_descriptor * snoop_scb,
      struct dsp_scb_descriptor * parent_scb,
      int scb_child_type)
{
 struct dsp_scb_descriptor * scb;

 struct dsp_magic_snoop_task magic_snoop_scb = {
          0,
          0,
          snoop_buffer_address << 0x10,
          0,snoop_scb->address,
          0,
          0,
          0,
          0,
          0,
          0,0,
          0,0,
          RSCONFIG_SAMPLE_16STEREO + RSCONFIG_MODULO_64,
          snoop_buffer_address << 0x10,
          0,
          { 0x8000,0x8000,
                   0xffff,0xffff
  }
 };

 scb = cs46xx_dsp_create_generic_scb(chip,scb_name,(u32 *)&magic_snoop_scb,
         dest,"MAGICSNOOPTASK",parent_scb,
         scb_child_type);

 return scb;
}
