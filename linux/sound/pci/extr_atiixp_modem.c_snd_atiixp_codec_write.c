
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atiixp_modem {int dummy; } ;


 unsigned int ATI_REG_PHYS_OUT_ADDR_EN ;
 unsigned int ATI_REG_PHYS_OUT_ADDR_SHIFT ;
 unsigned int ATI_REG_PHYS_OUT_DATA_SHIFT ;
 int PHYS_OUT_ADDR ;
 int atiixp_write (struct atiixp_modem*,int ,unsigned int) ;
 scalar_t__ snd_atiixp_acquire_codec (struct atiixp_modem*) ;

__attribute__((used)) static void snd_atiixp_codec_write(struct atiixp_modem *chip,
       unsigned short codec,
       unsigned short reg, unsigned short val)
{
 unsigned int data;

 if (snd_atiixp_acquire_codec(chip) < 0)
  return;
 data = ((unsigned int)val << ATI_REG_PHYS_OUT_DATA_SHIFT) |
  ((unsigned int)reg << ATI_REG_PHYS_OUT_ADDR_SHIFT) |
  ATI_REG_PHYS_OUT_ADDR_EN | codec;
 atiixp_write(chip, PHYS_OUT_ADDR, data);
}
