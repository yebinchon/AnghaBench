
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sb {int dummy; } ;


 int EIO ;
 int command_seq (struct snd_sb*,unsigned char*,int) ;
 int snd_sbdsp_command (struct snd_sb*,int) ;
 unsigned char snd_sbdsp_get_byte (struct snd_sb*) ;

__attribute__((used)) static int set_codec_parameter(struct snd_sb *chip, unsigned char par, unsigned char val)
{
 unsigned char dsp_cmd[3];

 dsp_cmd[0] = 0x05;
 dsp_cmd[1] = val;
 dsp_cmd[2] = par;
 command_seq(chip, dsp_cmd, 3);
 snd_sbdsp_command(chip, 0x03);
 if (snd_sbdsp_get_byte(chip) != par)
  return -EIO;
 return 0;
}
