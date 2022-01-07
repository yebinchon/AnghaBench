
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct snd_cs46xx {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int DMA_RQ_C1_DEST_MOD1024 ;
 int DMA_RQ_C1_DEST_MOD128 ;
 int DMA_RQ_C1_DEST_MOD16 ;
 int DMA_RQ_C1_DEST_MOD256 ;
 int DMA_RQ_C1_DEST_MOD32 ;
 int DMA_RQ_C1_DEST_MOD512 ;
 int DMA_RQ_C1_DEST_MOD64 ;
 int DMA_RQ_C1_DEST_SIZE_MASK ;
 int EINVAL ;
 int WRITEBACK_SCB_ADDR ;
 int dev_dbg (int ,char*,int) ;
 int snd_cs46xx_peek (struct snd_cs46xx*,int) ;
 int snd_cs46xx_poke (struct snd_cs46xx*,int,int ) ;

int cs46xx_dsp_pcm_ostream_set_period (struct snd_cs46xx * chip,
           int period_size)
{
 u32 temp = snd_cs46xx_peek (chip,WRITEBACK_SCB_ADDR << 2);
 temp &= ~DMA_RQ_C1_DEST_SIZE_MASK;

 switch (period_size) {
 case 2048:
  temp |= DMA_RQ_C1_DEST_MOD1024;
  break;
 case 1024:
  temp |= DMA_RQ_C1_DEST_MOD512;
  break;
 case 512:
  temp |= DMA_RQ_C1_DEST_MOD256;
  break;
 case 256:
  temp |= DMA_RQ_C1_DEST_MOD128;
  break;
 case 128:
  temp |= DMA_RQ_C1_DEST_MOD64;
  break;
 case 64:
  temp |= DMA_RQ_C1_DEST_MOD32;
  break;
 case 32:
  temp |= DMA_RQ_C1_DEST_MOD16;
  break;
 default:
  dev_dbg(chip->card->dev,
   "period size (%d) not supported by HW\n", period_size);
  return -EINVAL;
 }

 snd_cs46xx_poke (chip,WRITEBACK_SCB_ADDR << 2,temp);

 return 0;
}
