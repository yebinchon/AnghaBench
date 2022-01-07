
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_indirect2 {scalar_t__ hw_ready; } ;
struct snd_ml403_ac97cr {int reg_lock; } ;


 int CR_PLAYFULL ;
 int CR_REG (struct snd_ml403_ac97cr*,int ) ;
 int PLAYFIFO ;
 int STATUS ;
 int in_be32 (int ) ;
 int out_be32 (int ,int ) ;
 struct snd_ml403_ac97cr* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static size_t
snd_ml403_ac97cr_playback_ind2_zero(struct snd_pcm_substream *substream,
        struct snd_pcm_indirect2 *rec)
{
 struct snd_ml403_ac97cr *ml403_ac97cr;
 int copied_words = 0;
 u32 full = 0;

 ml403_ac97cr = snd_pcm_substream_chip(substream);

 spin_lock(&ml403_ac97cr->reg_lock);
 while ((full = (in_be32(CR_REG(ml403_ac97cr, STATUS)) &
   CR_PLAYFULL)) != CR_PLAYFULL) {
  out_be32(CR_REG(ml403_ac97cr, PLAYFIFO), 0);
  copied_words++;
 }
 rec->hw_ready = 0;
 spin_unlock(&ml403_ac97cr->reg_lock);

 return (size_t) (copied_words * 2);
}
