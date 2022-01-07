
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_aio_chip {int clk; int rst; } ;
struct platform_device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct uniphier_aio_chip* platform_get_drvdata (struct platform_device*) ;
 int reset_control_assert (int ) ;

int uniphier_aio_remove(struct platform_device *pdev)
{
 struct uniphier_aio_chip *chip = platform_get_drvdata(pdev);

 reset_control_assert(chip->rst);
 clk_disable_unprepare(chip->clk);

 return 0;
}
