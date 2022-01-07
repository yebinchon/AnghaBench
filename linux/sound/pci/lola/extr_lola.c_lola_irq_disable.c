
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lola {int dummy; } ;


 int BAR1 ;
 int DIINTCTL ;
 int DINTCTL ;
 int DOINTCTL ;
 int lola_writel (struct lola*,int ,int ,int ) ;

__attribute__((used)) static void lola_irq_disable(struct lola *chip)
{
 lola_writel(chip, BAR1, DINTCTL, 0);
 lola_writel(chip, BAR1, DIINTCTL, 0);
 lola_writel(chip, BAR1, DOINTCTL, 0);
}
