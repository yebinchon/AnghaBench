
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sb {int hardware; int mode; scalar_t__ capture_format; int dma16; int dma8; unsigned int c_dma_size; unsigned int c_period_size; unsigned int force_mode16; int reg_lock; int mixer_lock; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int channels; unsigned int rate; int rate_den; int dma_addr; int format; } ;


 int DMA_AUTOINIT ;
 int DMA_MODE_READ ;
 int EBUSY ;
 int EINVAL ;
 unsigned int SB8_RATE (int) ;
 unsigned int SB_DSP_BLOCK_SIZE ;
 int SB_DSP_CAPTURE_FILT ;
 void* SB_DSP_HI_INPUT_AUTO ;
 scalar_t__ SB_DSP_INPUT ;
 void* SB_DSP_LO_INPUT_AUTO ;
 unsigned char SB_DSP_MONO_16BIT ;
 unsigned int SB_DSP_MONO_8BIT ;
 unsigned int SB_DSP_SAMPLE_RATE ;
 unsigned int SB_DSP_SPEAKER_OFF ;
 unsigned char SB_DSP_STEREO_16BIT ;
 unsigned int SB_DSP_STEREO_8BIT ;





 int SB_MODE_CAPTURE_16 ;
 int SB_MODE_CAPTURE_8 ;
 int SB_MODE_PLAYBACK_16 ;
 int SNDRV_PCM_FORMAT_S16_LE ;
 int snd_BUG_ON (int) ;
 int snd_dma_program (int,int ,unsigned int,int) ;
 unsigned int snd_pcm_lib_buffer_bytes (struct snd_pcm_substream*) ;
 unsigned int snd_pcm_lib_period_bytes (struct snd_pcm_substream*) ;
 struct snd_sb* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_sbdsp_command (struct snd_sb*,unsigned int) ;
 unsigned int snd_sbmixer_read (struct snd_sb*,int ) ;
 int snd_sbmixer_write (struct snd_sb*,int ,unsigned int) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_sb8_capture_prepare(struct snd_pcm_substream *substream)
{
 unsigned long flags;
 struct snd_sb *chip = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 unsigned int mixreg, rate, size, count;
 unsigned char format;
 unsigned char stereo = runtime->channels > 1;
 int dma;

 rate = runtime->rate;
 switch (chip->hardware) {
 case 129:
  if (runtime->format == SNDRV_PCM_FORMAT_S16_LE) {
   if (chip->mode & SB_MODE_PLAYBACK_16)
    return -EBUSY;
   else
    chip->mode |= SB_MODE_CAPTURE_16;
  }
  chip->capture_format = SB_DSP_LO_INPUT_AUTO;
  break;
 case 128:
  if (runtime->channels > 1) {
   if (snd_BUG_ON(rate != SB8_RATE(11025) &&
           rate != SB8_RATE(22050)))
    return -EINVAL;
   chip->capture_format = SB_DSP_HI_INPUT_AUTO;
   break;
  }
  chip->capture_format = (rate > 23000) ? SB_DSP_HI_INPUT_AUTO : SB_DSP_LO_INPUT_AUTO;
  break;
 case 130:
  if (rate > 13000) {
   chip->capture_format = SB_DSP_HI_INPUT_AUTO;
   break;
  }

 case 131:
  chip->capture_format = SB_DSP_LO_INPUT_AUTO;
  break;
 case 132:
  chip->capture_format = SB_DSP_INPUT;
  break;
 default:
  return -EINVAL;
 }
 if (chip->mode & SB_MODE_CAPTURE_16) {
  format = stereo ? SB_DSP_STEREO_16BIT : SB_DSP_MONO_16BIT;
  dma = chip->dma16;
 } else {
  format = stereo ? SB_DSP_STEREO_8BIT : SB_DSP_MONO_8BIT;
  chip->mode |= SB_MODE_CAPTURE_8;
  dma = chip->dma8;
 }
 size = chip->c_dma_size = snd_pcm_lib_buffer_bytes(substream);
 count = chip->c_period_size = snd_pcm_lib_period_bytes(substream);
 spin_lock_irqsave(&chip->reg_lock, flags);
 snd_sbdsp_command(chip, SB_DSP_SPEAKER_OFF);
 if (chip->hardware == 129)
  snd_sbdsp_command(chip, format);
 else if (stereo)
  snd_sbdsp_command(chip, SB_DSP_STEREO_8BIT);
 snd_sbdsp_command(chip, SB_DSP_SAMPLE_RATE);
 if (stereo) {
  snd_sbdsp_command(chip, 256 - runtime->rate_den / 2);
  spin_lock(&chip->mixer_lock);

  mixreg = snd_sbmixer_read(chip, SB_DSP_CAPTURE_FILT);
  snd_sbmixer_write(chip, SB_DSP_CAPTURE_FILT, mixreg | 0x20);
  spin_unlock(&chip->mixer_lock);

  chip->force_mode16 = mixreg;
 } else {
  snd_sbdsp_command(chip, 256 - runtime->rate_den);
 }
 if (chip->capture_format != SB_DSP_INPUT) {
  if (chip->mode & SB_MODE_PLAYBACK_16)
   count /= 2;
  count--;
  snd_sbdsp_command(chip, SB_DSP_BLOCK_SIZE);
  snd_sbdsp_command(chip, count & 0xff);
  snd_sbdsp_command(chip, count >> 8);
 }
 spin_unlock_irqrestore(&chip->reg_lock, flags);
 snd_dma_program(dma, runtime->dma_addr,
   size, DMA_MODE_READ | DMA_AUTOINIT);
 return 0;
}
