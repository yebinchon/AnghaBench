
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;


 int AC97_CMD ;
 int ICEMT1724 (struct snd_ice1712*,int ) ;
 int inb (int ) ;
 int mdelay (int) ;
 int outb (int,int ) ;

__attribute__((used)) static void revo_i2s_mclk_changed(struct snd_ice1712 *ice)
{

 outb(inb(ICEMT1724(ice, AC97_CMD)) | 0x80, ICEMT1724(ice, AC97_CMD));
 mdelay(5);

 outb(inb(ICEMT1724(ice, AC97_CMD)) & ~0x80, ICEMT1724(ice, AC97_CMD));
}
