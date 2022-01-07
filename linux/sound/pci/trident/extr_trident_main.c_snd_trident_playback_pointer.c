
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_trident_voice {int number; int running; } ;
struct snd_trident {scalar_t__ device; int reg_lock; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {unsigned int buffer_size; struct snd_trident_voice* private_data; } ;
typedef unsigned int snd_pcm_uframes_t ;


 scalar_t__ CH_DX_CSO_ALPHA_FMS ;
 scalar_t__ CH_NX_DELTA_CSO ;
 scalar_t__ T4D_LFO_GC_CIR ;
 scalar_t__ TRIDENT_DEVICE_ID_NX ;
 int TRID_REG (struct snd_trident*,scalar_t__) ;
 scalar_t__ inl (int ) ;
 unsigned int inw (int ) ;
 int outb (int ,int ) ;
 struct snd_trident* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static snd_pcm_uframes_t snd_trident_playback_pointer(struct snd_pcm_substream *substream)
{
 struct snd_trident *trident = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_trident_voice *voice = runtime->private_data;
 unsigned int cso;

 if (!voice->running)
  return 0;

 spin_lock(&trident->reg_lock);

 outb(voice->number, TRID_REG(trident, T4D_LFO_GC_CIR));

 if (trident->device != TRIDENT_DEVICE_ID_NX) {
  cso = inw(TRID_REG(trident, CH_DX_CSO_ALPHA_FMS + 2));
 } else {
  cso = (unsigned int) inl(TRID_REG(trident, CH_NX_DELTA_CSO)) & 0x00ffffff;
 }

 spin_unlock(&trident->reg_lock);

 if (cso >= runtime->buffer_size)
  cso = 0;

 return cso;
}
