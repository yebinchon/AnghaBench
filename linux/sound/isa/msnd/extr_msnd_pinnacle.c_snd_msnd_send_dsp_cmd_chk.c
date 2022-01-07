
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_msnd {int card; } ;


 int snd_msnd_dsp_full_reset (int ) ;
 int snd_msnd_send_dsp_cmd (struct snd_msnd*,int ) ;

__attribute__((used)) static int snd_msnd_send_dsp_cmd_chk(struct snd_msnd *chip, u8 cmd)
{
 if (snd_msnd_send_dsp_cmd(chip, cmd) == 0)
  return 0;
 snd_msnd_dsp_full_reset(chip->card);
 return snd_msnd_send_dsp_cmd(chip, cmd);
}
