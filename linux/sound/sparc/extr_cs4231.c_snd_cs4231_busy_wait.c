
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_cs4231 {int dummy; } ;


 int CS4231U (struct snd_cs4231*,int ) ;
 int CS4231_INIT ;
 int REGSEL ;
 int __cs4231_readb (struct snd_cs4231*,int ) ;
 int msleep (int) ;

__attribute__((used)) static void snd_cs4231_busy_wait(struct snd_cs4231 *chip)
{
 int timeout;


 for (timeout = 5; timeout > 0; timeout--)
  __cs4231_readb(chip, CS4231U(chip, REGSEL));


 for (timeout = 500; timeout > 0; timeout--) {
  int val = __cs4231_readb(chip, CS4231U(chip, REGSEL));
  if ((val & CS4231_INIT) == 0)
   break;
  msleep(1);
 }
}
