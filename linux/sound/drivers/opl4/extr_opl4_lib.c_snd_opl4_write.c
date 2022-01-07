
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_opl4 {scalar_t__ pcm_port; } ;


 int outb (int ,scalar_t__) ;
 int snd_opl4_wait (struct snd_opl4*) ;

void snd_opl4_write(struct snd_opl4 *opl4, u8 reg, u8 value)
{
 snd_opl4_wait(opl4);
 outb(reg, opl4->pcm_port);

 snd_opl4_wait(opl4);
 outb(value, opl4->pcm_port + 1);
}
