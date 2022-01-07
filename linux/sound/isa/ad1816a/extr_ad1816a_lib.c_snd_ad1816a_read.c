
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ad1816a {int dummy; } ;


 int AD1816A_INDIR_ADDR ;
 int AD1816A_INDIR_DATA_HIGH ;
 int AD1816A_INDIR_DATA_LOW ;
 int snd_ad1816a_in (struct snd_ad1816a*,int ) ;
 int snd_ad1816a_out (struct snd_ad1816a*,int ,unsigned char) ;

__attribute__((used)) static unsigned short snd_ad1816a_read(struct snd_ad1816a *chip, unsigned char reg)
{
 snd_ad1816a_out(chip, AD1816A_INDIR_ADDR, reg & 0x3f);
 return snd_ad1816a_in(chip, AD1816A_INDIR_DATA_LOW) |
  (snd_ad1816a_in(chip, AD1816A_INDIR_DATA_HIGH) << 8);
}
