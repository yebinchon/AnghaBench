
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emu10k1 {int port; } ;


 int TINA2_VOLUME ;
 unsigned int inl (unsigned long) ;
 int msleep (int) ;
 int outl (int,unsigned long) ;
 int snd_emu10k1_ptr20_write (struct snd_emu10k1*,int ,int ,int) ;

__attribute__((used)) static int snd_emu10k1_cardbus_init(struct snd_emu10k1 *emu)
{
 unsigned long special_port;
 unsigned int value;




 special_port = emu->port + 0x38;
 value = inl(special_port);
 outl(0x00d00000, special_port);
 value = inl(special_port);
 outl(0x00d00001, special_port);
 value = inl(special_port);
 outl(0x00d0005f, special_port);
 value = inl(special_port);
 outl(0x00d0007f, special_port);
 value = inl(special_port);
 outl(0x0090007f, special_port);
 value = inl(special_port);

 snd_emu10k1_ptr20_write(emu, TINA2_VOLUME, 0, 0xfefefefe);

 msleep(200);
 return 0;
}
