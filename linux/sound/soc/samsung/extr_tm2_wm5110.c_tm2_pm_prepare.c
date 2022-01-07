
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_card {int dummy; } ;
struct device {int dummy; } ;


 struct snd_soc_card* dev_get_drvdata (struct device*) ;
 int tm2_stop_sysclk (struct snd_soc_card*) ;

__attribute__((used)) static int tm2_pm_prepare(struct device *dev)
{
 struct snd_soc_card *card = dev_get_drvdata(dev);

 return tm2_stop_sysclk(card);
}
