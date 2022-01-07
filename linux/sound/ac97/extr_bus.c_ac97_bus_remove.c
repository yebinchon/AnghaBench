
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int driver; } ;
struct ac97_codec_driver {int (* remove ) (struct ac97_codec_device*) ;} ;
struct ac97_codec_device {int dummy; } ;


 int ac97_put_disable_clk (struct ac97_codec_device*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put_noidle (struct device*) ;
 int stub1 (struct ac97_codec_device*) ;
 struct ac97_codec_device* to_ac97_device (struct device*) ;
 struct ac97_codec_driver* to_ac97_driver (int ) ;

__attribute__((used)) static int ac97_bus_remove(struct device *dev)
{
 struct ac97_codec_device *adev = to_ac97_device(dev);
 struct ac97_codec_driver *adrv = to_ac97_driver(dev->driver);
 int ret;

 ret = pm_runtime_get_sync(dev);
 if (ret < 0)
  return ret;

 ret = adrv->remove(adev);
 pm_runtime_put_noidle(dev);
 if (ret == 0)
  ac97_put_disable_clk(adev);

 pm_runtime_disable(dev);

 return ret;
}
