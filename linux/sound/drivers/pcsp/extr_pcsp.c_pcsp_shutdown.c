
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcsp {int dummy; } ;
struct platform_device {int dummy; } ;


 int pcsp_stop_beep (struct snd_pcsp*) ;
 struct snd_pcsp* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static void pcsp_shutdown(struct platform_device *dev)
{
 struct snd_pcsp *chip = platform_get_drvdata(dev);
 pcsp_stop_beep(chip);
}
