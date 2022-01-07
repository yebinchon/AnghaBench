
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;


 int ICEMT1724 (struct snd_ice1712*,int ) ;
 int ICEREG1724 (struct snd_ice1712*,int ) ;
 int SPDIF_CFG ;
 int SPDIF_CTRL ;
 unsigned char VT1724_CFG_SPDIF_OUT_EN ;
 unsigned char inb (int ) ;
 int outb (unsigned char,int ) ;
 int outw (unsigned int,int ) ;

__attribute__((used)) static void update_spdif_bits(struct snd_ice1712 *ice, unsigned int val)
{
 unsigned char cbit, disabled;

 cbit = inb(ICEREG1724(ice, SPDIF_CFG));
 disabled = cbit & ~VT1724_CFG_SPDIF_OUT_EN;
 if (cbit != disabled)
  outb(disabled, ICEREG1724(ice, SPDIF_CFG));
 outw(val, ICEMT1724(ice, SPDIF_CTRL));
 if (cbit != disabled)
  outb(cbit, ICEREG1724(ice, SPDIF_CFG));
 outw(val, ICEMT1724(ice, SPDIF_CTRL));
}
