
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card {int dummy; } ;
struct platform_device {int dummy; } ;
struct atmel_ac97c {int irq; int regs; int pclk; } ;


 int CAMR ;
 int COMR ;
 int MR ;
 int ac97c_writel (struct atmel_ac97c*,int ,int ) ;
 int clk_disable_unprepare (int ) ;
 int clk_put (int ) ;
 int free_irq (int ,struct atmel_ac97c*) ;
 struct atmel_ac97c* get_chip (struct snd_card*) ;
 int iounmap (int ) ;
 struct snd_card* platform_get_drvdata (struct platform_device*) ;
 int snd_card_free (struct snd_card*) ;

__attribute__((used)) static int atmel_ac97c_remove(struct platform_device *pdev)
{
 struct snd_card *card = platform_get_drvdata(pdev);
 struct atmel_ac97c *chip = get_chip(card);

 ac97c_writel(chip, CAMR, 0);
 ac97c_writel(chip, COMR, 0);
 ac97c_writel(chip, MR, 0);

 clk_disable_unprepare(chip->pclk);
 clk_put(chip->pclk);
 iounmap(chip->regs);
 free_irq(chip->irq, chip);

 snd_card_free(card);

 return 0;
}
