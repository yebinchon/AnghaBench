
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int period_size; int rate; int format; int periods; int dma_addr; scalar_t__ dma_area; int buffer_size; int channels; struct snd_ca0106_pcm* private_data; } ;
struct snd_ca0106_pcm {int channel_id; } ;
struct TYPE_4__ {int addr; int* bytes; scalar_t__ area; } ;
struct snd_ca0106 {TYPE_2__ buffer; scalar_t__ port; TYPE_1__* card; } ;
struct TYPE_3__ {int dev; } ;


 scalar_t__ HCFG ;
 int HCFG_PLAYBACK_S32_LE ;
 int PLAYBACK_DMA_ADDR ;
 int PLAYBACK_LIST_ADDR ;
 int PLAYBACK_LIST_PTR ;
 int PLAYBACK_LIST_SIZE ;
 int PLAYBACK_MUTE ;
 int PLAYBACK_PERIOD_SIZE ;
 int PLAYBACK_POINTER ;


 int SPCS0 ;
 int SPCS_CHANNELNUM_LEFT ;
 int SPCS_CLKACCY_1000PPM ;
 int SPCS_COPYRIGHT ;
 int SPCS_EMPHASIS_NONE ;
 int SPCS_GENERATIONSTATUS ;
 int SPCS_SAMPLERATE_48 ;
 int SPCS_SOURCENUM_UNSPEC ;
 int dev_dbg (int ,char*,int,int,...) ;
 int frames_to_bytes (struct snd_pcm_runtime*,int) ;
 int inl (scalar_t__) ;
 int outl (int,scalar_t__) ;
 int snd_ca0106_ptr_read (struct snd_ca0106*,int,int ) ;
 int snd_ca0106_ptr_write (struct snd_ca0106*,int,int,int) ;
 struct snd_ca0106* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_ca0106_pcm_prepare_playback(struct snd_pcm_substream *substream)
{
 struct snd_ca0106 *emu = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_ca0106_pcm *epcm = runtime->private_data;
 int channel = epcm->channel_id;
 u32 *table_base = (u32 *)(emu->buffer.area+(8*16*channel));
 u32 period_size_bytes = frames_to_bytes(runtime, runtime->period_size);
 u32 hcfg_mask = HCFG_PLAYBACK_S32_LE;
 u32 hcfg_set = 0x00000000;
 u32 hcfg;
 u32 reg40_mask = 0x30000 << (channel<<1);
 u32 reg40_set = 0;
 u32 reg40;

 u32 reg71_mask = 0x03030000 ;
 u32 reg71_set = 0;
 u32 reg71;
 int i;
 switch (runtime->rate) {
 case 44100:
  reg40_set = 0x10000 << (channel<<1);
  reg71_set = 0x01010000;
  break;
        case 48000:
  reg40_set = 0;
  reg71_set = 0;
  break;
 case 96000:
  reg40_set = 0x20000 << (channel<<1);
  reg71_set = 0x02020000;
  break;
 case 192000:
  reg40_set = 0x30000 << (channel<<1);
  reg71_set = 0x03030000;
  break;
 default:
  reg40_set = 0;
  reg71_set = 0;
  break;
 }


 switch (runtime->format) {
 case 129:
  hcfg_set = 0;
  break;
 case 128:
  hcfg_set = HCFG_PLAYBACK_S32_LE;
  break;
 default:
  hcfg_set = 0;
  break;
 }
 hcfg = inl(emu->port + HCFG) ;
 hcfg = (hcfg & ~hcfg_mask) | hcfg_set;
 outl(hcfg, emu->port + HCFG);
 reg40 = snd_ca0106_ptr_read(emu, 0x40, 0);
 reg40 = (reg40 & ~reg40_mask) | reg40_set;
 snd_ca0106_ptr_write(emu, 0x40, 0, reg40);
 reg71 = snd_ca0106_ptr_read(emu, 0x71, 0);
 reg71 = (reg71 & ~reg71_mask) | reg71_set;
 snd_ca0106_ptr_write(emu, 0x71, 0, reg71);


        for(i=0; i < runtime->periods; i++) {
  table_base[i*2] = runtime->dma_addr + (i * period_size_bytes);
  table_base[i*2+1] = period_size_bytes << 16;
 }

 snd_ca0106_ptr_write(emu, PLAYBACK_LIST_ADDR, channel, emu->buffer.addr+(8*16*channel));
 snd_ca0106_ptr_write(emu, PLAYBACK_LIST_SIZE, channel, (runtime->periods - 1) << 19);
 snd_ca0106_ptr_write(emu, PLAYBACK_LIST_PTR, channel, 0);
 snd_ca0106_ptr_write(emu, PLAYBACK_DMA_ADDR, channel, runtime->dma_addr);
 snd_ca0106_ptr_write(emu, PLAYBACK_PERIOD_SIZE, channel, frames_to_bytes(runtime, runtime->period_size)<<16);

 snd_ca0106_ptr_write(emu, PLAYBACK_PERIOD_SIZE, channel, 0);
 snd_ca0106_ptr_write(emu, PLAYBACK_POINTER, channel, 0);
 snd_ca0106_ptr_write(emu, 0x07, channel, 0x0);
 snd_ca0106_ptr_write(emu, 0x08, channel, 0);
        snd_ca0106_ptr_write(emu, PLAYBACK_MUTE, 0x0, 0x0);
 return 0;
}
