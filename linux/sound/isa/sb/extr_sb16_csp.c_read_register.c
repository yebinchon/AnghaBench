
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sb {int dummy; } ;


 int command_seq (struct snd_sb*,unsigned char*,int) ;
 int snd_sbdsp_get_byte (struct snd_sb*) ;

__attribute__((used)) static int read_register(struct snd_sb *chip, unsigned char reg)
{
 unsigned char dsp_cmd[2];

 dsp_cmd[0] = 0x0f;
 dsp_cmd[1] = reg;
 command_seq(chip, dsp_cmd, 2);
 return snd_sbdsp_get_byte(chip);
}
