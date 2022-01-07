
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int GPIO107_HX4700_SPK_nSD ;
 int GPIO92_HX4700_HP_DRIVER ;
 int gpio_free_array (int ,int ) ;
 int gpio_set_value (int ,int ) ;
 int hx4700_audio_gpios ;

__attribute__((used)) static int hx4700_audio_remove(struct platform_device *pdev)
{
 gpio_set_value(GPIO92_HX4700_HP_DRIVER, 0);
 gpio_set_value(GPIO107_HX4700_SPK_nSD, 0);

 gpio_free_array(hx4700_audio_gpios, ARRAY_SIZE(hx4700_audio_gpios));
 return 0;
}
