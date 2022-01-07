
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ca0106 {scalar_t__ port; } ;


 int BASIC_INTERRUPT ;
 int EXTENDED_INT_MASK ;
 scalar_t__ HCFG ;
 scalar_t__ INTE ;
 int outl (int ,scalar_t__) ;
 int snd_ca0106_ptr_write (struct snd_ca0106*,int ,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static void ca0106_stop_chip(struct snd_ca0106 *chip)
{

 snd_ca0106_ptr_write(chip, BASIC_INTERRUPT, 0, 0);
 outl(0, chip->port + INTE);
 snd_ca0106_ptr_write(chip, EXTENDED_INT_MASK, 0, 0);
 udelay(1000);


 outl(0, chip->port + HCFG);




}
