
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int rate; int format; int buffer_size; int dma_addr; int dma_area; int periods; int period_size; int channels; struct snd_ca0106_pcm* private_data; } ;
struct snd_ca0106_pcm {int channel_id; } ;
struct TYPE_5__ {int addr; int bytes; int area; } ;
struct snd_ca0106 {TYPE_3__* details; scalar_t__ port; TYPE_2__ buffer; TYPE_1__* card; } ;
struct TYPE_6__ {int i2c_adc; } ;
struct TYPE_4__ {int dev; } ;


 int ADC_MASTER ;
 int CAPTURE_BUFFER_SIZE ;
 int CAPTURE_DMA_ADDR ;
 int CAPTURE_POINTER ;
 scalar_t__ HCFG ;
 int HCFG_CAPTURE_S32_LE ;


 int dev_dbg (int ,char*,int,int,int,...) ;
 int frames_to_bytes (struct snd_pcm_runtime*,int) ;
 int inl (scalar_t__) ;
 int outl (int,scalar_t__) ;
 int snd_ca0106_i2c_write (struct snd_ca0106*,int ,int) ;
 int snd_ca0106_ptr_read (struct snd_ca0106*,int,int ) ;
 int snd_ca0106_ptr_write (struct snd_ca0106*,int,int,int) ;
 struct snd_ca0106* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int table_base ;

__attribute__((used)) static int snd_ca0106_pcm_prepare_capture(struct snd_pcm_substream *substream)
{
 struct snd_ca0106 *emu = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_ca0106_pcm *epcm = runtime->private_data;
 int channel = epcm->channel_id;
 u32 hcfg_mask = HCFG_CAPTURE_S32_LE;
 u32 hcfg_set = 0x00000000;
 u32 hcfg;
 u32 over_sampling=0x2;
 u32 reg71_mask = 0x0000c000 ;
 u32 reg71_set = 0;
 u32 reg71;
 switch (runtime->rate) {
 case 44100:
  reg71_set = 0x00004000;
  break;
        case 48000:
  reg71_set = 0;
  break;
 case 96000:
  reg71_set = 0x00008000;
  over_sampling=0xa;
  break;
 case 192000:
  reg71_set = 0x0000c000;
  over_sampling=0xa;
  break;
 default:
  reg71_set = 0;
  break;
 }


 switch (runtime->format) {
 case 129:
  hcfg_set = 0;
  break;
 case 128:
  hcfg_set = HCFG_CAPTURE_S32_LE;
  break;
 default:
  hcfg_set = 0;
  break;
 }
 hcfg = inl(emu->port + HCFG) ;
 hcfg = (hcfg & ~hcfg_mask) | hcfg_set;
 outl(hcfg, emu->port + HCFG);
 reg71 = snd_ca0106_ptr_read(emu, 0x71, 0);
 reg71 = (reg71 & ~reg71_mask) | reg71_set;
 snd_ca0106_ptr_write(emu, 0x71, 0, reg71);
        if (emu->details->i2c_adc == 1) {
         snd_ca0106_i2c_write(emu, ADC_MASTER, over_sampling);
 }
 snd_ca0106_ptr_write(emu, 0x13, channel, 0);
 snd_ca0106_ptr_write(emu, CAPTURE_DMA_ADDR, channel, runtime->dma_addr);
 snd_ca0106_ptr_write(emu, CAPTURE_BUFFER_SIZE, channel, frames_to_bytes(runtime, runtime->buffer_size)<<16);
 snd_ca0106_ptr_write(emu, CAPTURE_POINTER, channel, 0);

 return 0;
}
