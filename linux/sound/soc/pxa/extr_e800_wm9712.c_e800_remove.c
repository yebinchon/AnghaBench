
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int e800_audio_gpios ;
 int gpio_free_array (int ,int ) ;

__attribute__((used)) static int e800_remove(struct platform_device *pdev)
{
 gpio_free_array(e800_audio_gpios, ARRAY_SIZE(e800_audio_gpios));
 return 0;
}
