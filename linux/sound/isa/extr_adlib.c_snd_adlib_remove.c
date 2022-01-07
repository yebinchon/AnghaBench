
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dev_get_drvdata (struct device*) ;
 int snd_card_free (int ) ;

__attribute__((used)) static int snd_adlib_remove(struct device *dev, unsigned int n)
{
 snd_card_free(dev_get_drvdata(dev));
 return 0;
}
