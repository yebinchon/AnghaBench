
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sb {int dummy; } ;


 int command_seq (struct snd_sb*,unsigned char*,int) ;

__attribute__((used)) static int set_register(struct snd_sb *chip, unsigned char reg, unsigned char val)
{
 unsigned char dsp_cmd[3];

 dsp_cmd[0] = 0x0e;
 dsp_cmd[1] = reg;
 dsp_cmd[2] = val;
 return command_seq(chip, dsp_cmd, 3);
}
