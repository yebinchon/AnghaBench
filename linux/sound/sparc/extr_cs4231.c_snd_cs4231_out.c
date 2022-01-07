
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_cs4231 {unsigned char* image; } ;


 int mb () ;
 int snd_cs4231_dout (struct snd_cs4231*,unsigned char,unsigned char) ;

__attribute__((used)) static void snd_cs4231_out(struct snd_cs4231 *chip, unsigned char reg,
      unsigned char value)
{
 snd_cs4231_dout(chip, reg, value);
 chip->image[reg] = value;
 mb();
}
