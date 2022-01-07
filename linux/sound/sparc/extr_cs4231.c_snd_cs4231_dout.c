
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_cs4231 {unsigned char mce_bit; } ;


 int CS4231U (struct snd_cs4231*,int ) ;
 int CS4231_INIT ;
 int REG ;
 int REGSEL ;
 int __cs4231_readb (struct snd_cs4231*,int ) ;
 int __cs4231_writeb (struct snd_cs4231*,unsigned char,int ) ;
 int mb () ;
 int snd_cs4231_ready (struct snd_cs4231*) ;
 int snd_printdd (char*,unsigned char,unsigned char) ;
 int wmb () ;

__attribute__((used)) static void snd_cs4231_dout(struct snd_cs4231 *chip, unsigned char reg,
       unsigned char value)
{
 snd_cs4231_ready(chip);






 __cs4231_writeb(chip, chip->mce_bit | reg, CS4231U(chip, REGSEL));
 wmb();
 __cs4231_writeb(chip, value, CS4231U(chip, REG));
 mb();
}
