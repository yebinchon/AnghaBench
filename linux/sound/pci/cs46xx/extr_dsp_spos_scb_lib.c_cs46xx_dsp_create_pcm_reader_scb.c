
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct snd_cs46xx {TYPE_4__* card; struct dsp_spos_instance* dsp_spos_instance; } ;
struct dsp_spos_instance {int * null_algorithm; } ;
struct dsp_scb_descriptor {int dummy; } ;
struct TYPE_7__ {int member_0; int member_1; int member_2; int member_3; } ;
struct TYPE_6__ {int member_4; int member_3; int member_2; int member_1; int member_0; } ;
struct TYPE_5__ {int member_2; int member_3; int member_1; int member_0; } ;
struct dsp_generic_scb {int member_6; int member_7; TYPE_3__ member_9; int member_8; int member_5; int member_4; int member_3; int member_2; TYPE_2__ member_1; TYPE_1__ member_0; } ;
struct TYPE_8__ {int dev; } ;


 scalar_t__ DMA_RQ_C1_DEST_MOD32 ;
 scalar_t__ DMA_RQ_C1_SOURCE_MOD1024 ;
 scalar_t__ DMA_RQ_C1_SOURCE_ON_HOST ;
 scalar_t__ DMA_RQ_C1_WRITEBACK_DEST_FLAG ;
 scalar_t__ DMA_RQ_C1_WRITEBACK_SRC_FLAG ;
 scalar_t__ DMA_RQ_C2_AC_NONE ;
 scalar_t__ DMA_RQ_C2_SIGNAL_SOURCE_PINGPONG ;
 int DMA_RQ_SD_SP_SAMPLE_ADDR ;
 int NULL_SCB_ADDR ;
 int RSCONFIG_DMA_ENABLE ;
 int RSCONFIG_MAX_DMA_SIZE_SHIFT ;
 int RSCONFIG_MODULO_32 ;
 int RSCONFIG_SAMPLE_16STEREO ;
 int RSCONFIG_STREAM_NUM_SHIFT ;
 int SYMBOL_CODE ;
 struct dsp_scb_descriptor* _dsp_create_generic_scb (struct snd_cs46xx*,char*,int*,int,int *,struct dsp_scb_descriptor*,int) ;
 int * cs46xx_dsp_lookup_symbol (struct snd_cs46xx*,char*,int ) ;
 int dev_err (int ,char*) ;

__attribute__((used)) static struct dsp_scb_descriptor *
cs46xx_dsp_create_pcm_reader_scb(struct snd_cs46xx * chip, char * scb_name,
                                 u16 sample_buffer_addr, u32 dest,
                                 int virtual_channel, u32 playback_hw_addr,
                                 struct dsp_scb_descriptor * parent_scb,
                                 int scb_child_type)
{
 struct dsp_spos_instance * ins = chip->dsp_spos_instance;
 struct dsp_scb_descriptor * scb;

 struct dsp_generic_scb pcm_reader_scb = {
  { DMA_RQ_C1_SOURCE_ON_HOST +
    DMA_RQ_C1_SOURCE_MOD1024 +
    DMA_RQ_C1_DEST_MOD32 +
    DMA_RQ_C1_WRITEBACK_SRC_FLAG +
    DMA_RQ_C1_WRITEBACK_DEST_FLAG +
    15,


    DMA_RQ_C2_AC_NONE +
    DMA_RQ_C2_SIGNAL_SOURCE_PINGPONG +

    virtual_channel,
    playback_hw_addr,
    DMA_RQ_SD_SP_SAMPLE_ADDR +
    sample_buffer_addr
  },

  {
   0,
   0,
   0,
   0,
   0
  },

  NULL_SCB_ADDR,NULL_SCB_ADDR,

  0,NULL_SCB_ADDR,


  RSCONFIG_DMA_ENABLE +
  (19 << RSCONFIG_MAX_DMA_SIZE_SHIFT) +

  ((dest >> 4) << RSCONFIG_STREAM_NUM_SHIFT) +
  RSCONFIG_SAMPLE_16STEREO +
  RSCONFIG_MODULO_32,

  (sample_buffer_addr << 0x10),

  0,
  {


   0xffff,0xffff,
   0xffff,0xffff
  }
 };

 if (ins->null_algorithm == ((void*)0)) {
  ins->null_algorithm = cs46xx_dsp_lookup_symbol (chip,"NULLALGORITHM",
         SYMBOL_CODE);

  if (ins->null_algorithm == ((void*)0)) {
   dev_err(chip->card->dev,
    "dsp_spos: symbol NULLALGORITHM not found\n");
   return ((void*)0);
  }
 }

 scb = _dsp_create_generic_scb(chip,scb_name,(u32 *)&pcm_reader_scb,
          dest,ins->null_algorithm,parent_scb,
          scb_child_type);

 return scb;
}
