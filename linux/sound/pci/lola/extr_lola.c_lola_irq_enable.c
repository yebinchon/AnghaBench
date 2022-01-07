
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lola {TYPE_1__* pcm; } ;
struct TYPE_2__ {int num_streams; } ;


 int BAR1 ;
 size_t CAPT ;
 int DIINTCTL ;
 int DINTCTL ;
 int DOINTCTL ;
 unsigned int LOLA_DINT_CTRL ;
 unsigned int LOLA_DINT_FIFOERR ;
 unsigned int LOLA_DINT_GLOBAL ;
 unsigned int LOLA_DINT_MUERR ;
 size_t PLAY ;
 int lola_writel (struct lola*,int ,int ,unsigned int) ;

__attribute__((used)) static void lola_irq_enable(struct lola *chip)
{
 unsigned int val;


 val = (1 << chip->pcm[PLAY].num_streams) - 1;
 lola_writel(chip, BAR1, DOINTCTL, val);
 val = (1 << chip->pcm[CAPT].num_streams) - 1;
 lola_writel(chip, BAR1, DIINTCTL, val);


 val = LOLA_DINT_GLOBAL | LOLA_DINT_CTRL | LOLA_DINT_FIFOERR |
  LOLA_DINT_MUERR;
 lola_writel(chip, BAR1, DINTCTL, val);
}
