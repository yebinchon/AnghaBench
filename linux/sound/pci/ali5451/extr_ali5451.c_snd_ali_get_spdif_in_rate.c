
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef unsigned int u32 ;
struct snd_ali {int dummy; } ;


 int ALI_REG (struct snd_ali*,scalar_t__) ;
 scalar_t__ ALI_SPDIF_CS ;
 scalar_t__ ALI_SPDIF_CTRL ;
 int inb (int ) ;
 int outb (int,int ) ;
 int snd_ali_detect_spdif_rate (struct snd_ali*) ;

__attribute__((used)) static unsigned int snd_ali_get_spdif_in_rate(struct snd_ali *codec)
{
 u32 dwRate;
 u8 bval;

 bval = inb(ALI_REG(codec, ALI_SPDIF_CTRL));
 bval &= 0x7f;
 bval |= 0x40;
 outb(bval, ALI_REG(codec, ALI_SPDIF_CTRL));

 snd_ali_detect_spdif_rate(codec);

 bval = inb(ALI_REG(codec, ALI_SPDIF_CS + 3));
 bval &= 0x0f;

 switch (bval) {
 case 0: dwRate = 44100; break;
 case 1: dwRate = 48000; break;
 case 2: dwRate = 32000; break;
 default: dwRate = 0; break;
 }

 return dwRate;
}
