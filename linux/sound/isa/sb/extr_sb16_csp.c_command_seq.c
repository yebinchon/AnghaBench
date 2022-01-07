
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sb {int dummy; } ;


 int EIO ;
 int snd_sbdsp_command (struct snd_sb*,unsigned char const) ;

__attribute__((used)) static inline int command_seq(struct snd_sb *chip, const unsigned char *seq, int size)
{
 int i;
 for (i = 0; i < size; i++) {
  if (!snd_sbdsp_command(chip, seq[i]))
   return -EIO;
 }
 return 0;
}
