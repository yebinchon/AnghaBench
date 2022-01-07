
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lola {int dummy; } ;


 int BAR0 ;
 int CORBCTL ;
 int RIRBCTL ;
 int lola_writeb (struct lola*,int ,int ,int ) ;

__attribute__((used)) static void stop_corb_rirb(struct lola *chip)
{

 lola_writeb(chip, BAR0, RIRBCTL, 0);
 lola_writeb(chip, BAR0, CORBCTL, 0);
}
