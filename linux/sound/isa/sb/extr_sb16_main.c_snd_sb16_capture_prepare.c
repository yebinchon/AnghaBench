
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sb {unsigned int c_dma_size; int mode; unsigned int dma8; unsigned int dma16; int reg_lock; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int channels; int dma_addr; int rate; int format; } ;


 int DMA_AUTOINIT ;
 int DMA_MODE_READ ;
 unsigned int SB_DSP4_IN16_AI ;
 unsigned int SB_DSP4_IN8_AI ;
 unsigned char SB_DSP4_MODE_SIGN_MONO ;
 unsigned char SB_DSP4_MODE_SIGN_STEREO ;
 unsigned char SB_DSP4_MODE_UNS_MONO ;
 unsigned char SB_DSP4_MODE_UNS_STEREO ;
 unsigned int SB_DSP_DMA16_OFF ;
 unsigned int SB_DSP_DMA8_OFF ;
 int SB_MODE_CAPTURE_16 ;
 int SB_MODE_CAPTURE_8 ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int snd_dma_program (unsigned int,int ,unsigned int,int) ;
 scalar_t__ snd_pcm_format_unsigned (int ) ;
 unsigned int snd_pcm_lib_buffer_bytes (struct snd_pcm_substream*) ;
 unsigned int snd_pcm_lib_period_bytes (struct snd_pcm_substream*) ;
 struct snd_sb* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_sb16_csp_capture_prepare (struct snd_sb*,struct snd_pcm_runtime*) ;
 int snd_sb16_setup_rate (struct snd_sb*,int ,int ) ;
 int snd_sbdsp_command (struct snd_sb*,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_sb16_capture_prepare(struct snd_pcm_substream *substream)
{
 unsigned long flags;
 struct snd_sb *chip = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 unsigned char format;
 unsigned int size, count, dma;

 snd_sb16_csp_capture_prepare(chip, runtime);
 if (snd_pcm_format_unsigned(runtime->format) > 0) {
  format = runtime->channels > 1 ? SB_DSP4_MODE_UNS_STEREO : SB_DSP4_MODE_UNS_MONO;
 } else {
  format = runtime->channels > 1 ? SB_DSP4_MODE_SIGN_STEREO : SB_DSP4_MODE_SIGN_MONO;
 }
 snd_sb16_setup_rate(chip, runtime->rate, SNDRV_PCM_STREAM_CAPTURE);
 size = chip->c_dma_size = snd_pcm_lib_buffer_bytes(substream);
 dma = (chip->mode & SB_MODE_CAPTURE_8) ? chip->dma8 : chip->dma16;
 snd_dma_program(dma, runtime->dma_addr, size, DMA_MODE_READ | DMA_AUTOINIT);

 count = snd_pcm_lib_period_bytes(substream);
 spin_lock_irqsave(&chip->reg_lock, flags);
 if (chip->mode & SB_MODE_CAPTURE_16) {
  count >>= 1;
  count--;
  snd_sbdsp_command(chip, SB_DSP4_IN16_AI);
  snd_sbdsp_command(chip, format);
  snd_sbdsp_command(chip, count & 0xff);
  snd_sbdsp_command(chip, count >> 8);
  snd_sbdsp_command(chip, SB_DSP_DMA16_OFF);
 } else {
  count--;
  snd_sbdsp_command(chip, SB_DSP4_IN8_AI);
  snd_sbdsp_command(chip, format);
  snd_sbdsp_command(chip, count & 0xff);
  snd_sbdsp_command(chip, count >> 8);
  snd_sbdsp_command(chip, SB_DSP_DMA8_OFF);
 }
 spin_unlock_irqrestore(&chip->reg_lock, flags);
 return 0;
}
