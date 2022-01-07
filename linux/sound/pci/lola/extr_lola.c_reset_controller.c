
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lola {int cold_reset; TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int BAR0 ;
 int BAR1 ;
 int BOARD_MODE ;
 int EIO ;
 int GCTL ;
 int LOLA_GCTL_RESET ;
 int dev_err (int ,char*) ;
 unsigned long jiffies ;
 unsigned int lola_readl (struct lola*,int ,int ) ;
 int lola_writel (struct lola*,int ,int ,int ) ;
 unsigned long msecs_to_jiffies (int) ;
 int msleep (int) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static int reset_controller(struct lola *chip)
{
 unsigned int gctl = lola_readl(chip, BAR0, GCTL);
 unsigned long end_time;

 if (gctl) {

  lola_writel(chip, BAR1, BOARD_MODE, 0);
  return 0;
 }

 chip->cold_reset = 1;
 lola_writel(chip, BAR0, GCTL, LOLA_GCTL_RESET);
 end_time = jiffies + msecs_to_jiffies(200);
 do {
  msleep(1);
  gctl = lola_readl(chip, BAR0, GCTL);
  if (gctl)
   break;
 } while (time_before(jiffies, end_time));
 if (!gctl) {
  dev_err(chip->card->dev, "cannot reset controller\n");
  return -EIO;
 }
 return 0;
}
