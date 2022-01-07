
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcm1789_private {int work; } ;
struct device {int dummy; } ;


 struct pcm1789_private* dev_get_drvdata (struct device*) ;
 int flush_work (int *) ;

int pcm1789_common_exit(struct device *dev)
{
 struct pcm1789_private *priv = dev_get_drvdata(dev);

 flush_work(&priv->work);

 return 0;
}
