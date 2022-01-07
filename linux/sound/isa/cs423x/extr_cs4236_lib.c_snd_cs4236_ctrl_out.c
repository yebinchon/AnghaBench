
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_wss {unsigned char* cimage; scalar_t__ cport; } ;


 int outb (unsigned char,scalar_t__) ;

__attribute__((used)) static void snd_cs4236_ctrl_out(struct snd_wss *chip,
    unsigned char reg, unsigned char val)
{
 outb(reg, chip->cport + 3);
 outb(chip->cimage[reg] = val, chip->cport + 4);
}
