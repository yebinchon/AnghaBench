
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dev_get_drvdata (struct device*) ;
 int snd_card_free (int ) ;

__attribute__((used)) static int snd_es18xx_isa_remove(struct device *devptr,
     unsigned int dev)
{
 snd_card_free(dev_get_drvdata(devptr));
 return 0;
}
