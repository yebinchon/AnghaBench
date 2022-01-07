
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int runtime; } ;
struct ensoniq {int reg_lock; } ;
typedef size_t snd_pcm_uframes_t ;


 int CONTROL ;
 int DAC2_SIZE ;
 int ES_DAC2_EN ;
 int ES_MEM_PAGEO (int ) ;
 int ES_PAGE_DAC ;
 int ES_REG (struct ensoniq*,int ) ;
 size_t ES_REG_FCURR_COUNTI (int) ;
 int MEM_PAGE ;
 size_t bytes_to_frames (int ,size_t) ;
 int inl (int ) ;
 int outl (int ,int ) ;
 struct ensoniq* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static snd_pcm_uframes_t snd_ensoniq_playback2_pointer(struct snd_pcm_substream *substream)
{
 struct ensoniq *ensoniq = snd_pcm_substream_chip(substream);
 size_t ptr;

 spin_lock(&ensoniq->reg_lock);
 if (inl(ES_REG(ensoniq, CONTROL)) & ES_DAC2_EN) {
  outl(ES_MEM_PAGEO(ES_PAGE_DAC), ES_REG(ensoniq, MEM_PAGE));
  ptr = ES_REG_FCURR_COUNTI(inl(ES_REG(ensoniq, DAC2_SIZE)));
  ptr = bytes_to_frames(substream->runtime, ptr);
 } else {
  ptr = 0;
 }
 spin_unlock(&ensoniq->reg_lock);
 return ptr;
}
