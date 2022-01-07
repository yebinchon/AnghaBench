
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcsp {int input_dev; } ;
struct platform_device {int dummy; } ;


 int alsa_card_pcsp_exit (struct snd_pcsp*) ;
 int pcspkr_input_remove (int ) ;
 struct snd_pcsp* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int pcsp_remove(struct platform_device *dev)
{
 struct snd_pcsp *chip = platform_get_drvdata(dev);
 pcspkr_input_remove(chip->input_dev);
 alsa_card_pcsp_exit(chip);
 return 0;
}
