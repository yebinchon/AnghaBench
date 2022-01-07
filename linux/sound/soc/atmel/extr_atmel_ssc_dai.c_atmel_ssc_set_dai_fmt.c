
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dev; } ;
struct platform_device {size_t id; } ;
struct atmel_ssc_info {unsigned int daifmt; } ;


 struct atmel_ssc_info* ssc_info ;
 struct platform_device* to_platform_device (int ) ;

__attribute__((used)) static int atmel_ssc_set_dai_fmt(struct snd_soc_dai *cpu_dai,
  unsigned int fmt)
{
 struct platform_device *pdev = to_platform_device(cpu_dai->dev);
 struct atmel_ssc_info *ssc_p = &ssc_info[pdev->id];

 ssc_p->daifmt = fmt;
 return 0;
}
