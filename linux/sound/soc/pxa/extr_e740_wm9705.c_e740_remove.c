
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int e740_audio_gpios ;
 int gpio_free_array (int ,int ) ;

__attribute__((used)) static int e740_remove(struct platform_device *pdev)
{
 gpio_free_array(e740_audio_gpios, ARRAY_SIZE(e740_audio_gpios));
 return 0;
}
