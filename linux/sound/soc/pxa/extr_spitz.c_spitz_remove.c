
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int gpio_free (int ) ;
 int spitz_mic_gpio ;

__attribute__((used)) static int spitz_remove(struct platform_device *pdev)
{
 gpio_free(spitz_mic_gpio);
 return 0;
}
