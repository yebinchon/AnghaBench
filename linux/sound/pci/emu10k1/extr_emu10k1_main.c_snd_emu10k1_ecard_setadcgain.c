
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emu10k1 {unsigned int ecard_ctrl; } ;


 unsigned int EC_TRIM_CSN ;
 unsigned int EC_TRIM_SCLK ;
 unsigned int EC_TRIM_SDATA ;
 int snd_emu10k1_ecard_write (struct snd_emu10k1*,unsigned int) ;

__attribute__((used)) static void snd_emu10k1_ecard_setadcgain(struct snd_emu10k1 *emu,
      unsigned short gain)
{
 unsigned int bit;


 snd_emu10k1_ecard_write(emu, emu->ecard_ctrl & ~EC_TRIM_CSN);


 snd_emu10k1_ecard_write(emu, emu->ecard_ctrl & ~EC_TRIM_CSN);

 for (bit = (1 << 15); bit; bit >>= 1) {
  unsigned int value;

  value = emu->ecard_ctrl & ~(EC_TRIM_CSN | EC_TRIM_SDATA);

  if (gain & bit)
   value |= EC_TRIM_SDATA;


  snd_emu10k1_ecard_write(emu, value);
  snd_emu10k1_ecard_write(emu, value | EC_TRIM_SCLK);
  snd_emu10k1_ecard_write(emu, value);
 }

 snd_emu10k1_ecard_write(emu, emu->ecard_ctrl);
}
