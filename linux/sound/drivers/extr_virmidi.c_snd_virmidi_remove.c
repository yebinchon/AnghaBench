
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int platform_get_drvdata (struct platform_device*) ;
 int snd_card_free (int ) ;

__attribute__((used)) static int snd_virmidi_remove(struct platform_device *devptr)
{
 snd_card_free(platform_get_drvdata(devptr));
 return 0;
}
