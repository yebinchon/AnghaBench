
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_opl4 {int off_voices; } ;
struct opl4_voice {int reg_misc; scalar_t__ number; int list; } ;


 int OPL4_KEY_ON_BIT ;
 scalar_t__ OPL4_REG_MISC ;
 int list_move_tail (int *,int *) ;
 int snd_opl4_write (struct snd_opl4*,scalar_t__,int ) ;

__attribute__((used)) static void snd_opl4_voice_off(struct snd_opl4 *opl4, struct opl4_voice *voice)
{
 list_move_tail(&voice->list, &opl4->off_voices);

 voice->reg_misc &= ~OPL4_KEY_ON_BIT;
 snd_opl4_write(opl4, OPL4_REG_MISC + voice->number, voice->reg_misc);
}
