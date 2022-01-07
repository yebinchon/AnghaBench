
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nm256 {int dummy; } ;


 int snd_nm256_writeb (struct nm256*,int,int) ;
 int snd_nm256_writew (struct nm256*,int,int ) ;

__attribute__((used)) static void
snd_nm256_init_chip(struct nm256 *chip)
{

 snd_nm256_writeb(chip, 0x0, 0x11);
 snd_nm256_writew(chip, 0x214, 0);



}
