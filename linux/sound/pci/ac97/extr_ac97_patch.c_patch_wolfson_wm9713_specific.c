
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_ac97 {TYPE_1__* bus; } ;
struct TYPE_2__ {int card; } ;


 int AC97_CD ;
 int AC97_LINE ;
 int AC97_MIC ;
 int AC97_PC_BEEP ;
 int AC97_PHONE ;
 int AC97_REC_GAIN ;
 int AC97_VIDEO ;
 int ARRAY_SIZE (int *) ;
 int snd_ac97_cnew (int *,struct snd_ac97*) ;
 int snd_ac97_write_cache (struct snd_ac97*,int ,int) ;
 int snd_ctl_add (int ,int ) ;
 int * wm13_snd_ac97_controls ;

__attribute__((used)) static int patch_wolfson_wm9713_specific(struct snd_ac97 * ac97)
{
 int err, i;

 for (i = 0; i < ARRAY_SIZE(wm13_snd_ac97_controls); i++) {
  if ((err = snd_ctl_add(ac97->bus->card, snd_ac97_cnew(&wm13_snd_ac97_controls[i], ac97))) < 0)
   return err;
 }
 snd_ac97_write_cache(ac97, AC97_PC_BEEP, 0x0808);
 snd_ac97_write_cache(ac97, AC97_PHONE, 0x0808);
 snd_ac97_write_cache(ac97, AC97_MIC, 0x0808);
 snd_ac97_write_cache(ac97, AC97_LINE, 0x00da);
 snd_ac97_write_cache(ac97, AC97_CD, 0x0808);
 snd_ac97_write_cache(ac97, AC97_VIDEO, 0xd612);
 snd_ac97_write_cache(ac97, AC97_REC_GAIN, 0x1ba0);
 return 0;
}
