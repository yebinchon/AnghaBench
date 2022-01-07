
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dev_get_drvdata (struct device*) ;
 int snd_msnd_unload (int ) ;

__attribute__((used)) static int snd_msnd_isa_remove(struct device *pdev, unsigned int dev)
{
 snd_msnd_unload(dev_get_drvdata(pdev));
 return 0;
}
