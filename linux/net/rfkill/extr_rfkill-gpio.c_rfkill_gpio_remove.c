
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfkill_gpio_data {int rfkill_dev; } ;
struct platform_device {int dummy; } ;


 struct rfkill_gpio_data* platform_get_drvdata (struct platform_device*) ;
 int rfkill_destroy (int ) ;
 int rfkill_unregister (int ) ;

__attribute__((used)) static int rfkill_gpio_remove(struct platform_device *pdev)
{
 struct rfkill_gpio_data *rfkill = platform_get_drvdata(pdev);

 rfkill_unregister(rfkill->rfkill_dev);
 rfkill_destroy(rfkill->rfkill_dev);

 return 0;
}
