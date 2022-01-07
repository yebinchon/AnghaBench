
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_wss {int dummy; } ;


 int CS4231P (int ) ;
 int CS4231_INIT ;
 int REGSEL ;
 int udelay (int) ;
 int wss_inb (struct snd_wss*,int ) ;

__attribute__((used)) static void snd_wss_wait(struct snd_wss *chip)
{
 int timeout;

 for (timeout = 250;
      timeout > 0 && (wss_inb(chip, CS4231P(REGSEL)) & CS4231_INIT);
      timeout--)
  udelay(100);
}
