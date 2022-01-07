
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobj_uevent_env {int dummy; } ;
struct device {int dummy; } ;
typedef int modalias ;


 int ENOMEM ;
 scalar_t__ add_uevent_var (struct kobj_uevent_env*,char*,char*) ;
 int dev_to_hdac_dev (struct device*) ;
 int snd_hdac_codec_modalias (int ,char*,int) ;

__attribute__((used)) static int hda_uevent(struct device *dev, struct kobj_uevent_env *env)
{
 char modalias[32];

 snd_hdac_codec_modalias(dev_to_hdac_dev(dev), modalias,
    sizeof(modalias));
 if (add_uevent_var(env, "MODALIAS=%s", modalias))
  return -ENOMEM;
 return 0;
}
