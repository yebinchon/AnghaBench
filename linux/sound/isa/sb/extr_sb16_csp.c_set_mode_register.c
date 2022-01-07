
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sb {int dummy; } ;


 int command_seq (struct snd_sb*,unsigned char*,int) ;

__attribute__((used)) static int set_mode_register(struct snd_sb *chip, unsigned char mode)
{
 unsigned char dsp_cmd[2];

 dsp_cmd[0] = 0x04;
 dsp_cmd[1] = mode;
 return command_seq(chip, dsp_cmd, 2);
}
