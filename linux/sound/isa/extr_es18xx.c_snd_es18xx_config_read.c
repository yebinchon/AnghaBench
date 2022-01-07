
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_es18xx {scalar_t__ ctrl_port; } ;


 int inb (scalar_t__) ;
 int outb (unsigned char,scalar_t__) ;

__attribute__((used)) static int snd_es18xx_config_read(struct snd_es18xx *chip, unsigned char reg)
{
 int data;

 outb(reg, chip->ctrl_port);
 data = inb(chip->ctrl_port + 1);
 return data;
}
