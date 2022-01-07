
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct snd_soc_pcm_runtime {scalar_t__ num_codecs; } ;
struct kobject {int dummy; } ;
struct device {int dummy; } ;
struct attribute {int mode; } ;
struct TYPE_2__ {struct attribute attr; } ;


 TYPE_1__ dev_attr_pmdown_time ;
 struct snd_soc_pcm_runtime* dev_get_drvdata (struct device*) ;
 struct device* kobj_to_dev (struct kobject*) ;

__attribute__((used)) static umode_t soc_dev_attr_is_visible(struct kobject *kobj,
           struct attribute *attr, int idx)
{
 struct device *dev = kobj_to_dev(kobj);
 struct snd_soc_pcm_runtime *rtd = dev_get_drvdata(dev);

 if (attr == &dev_attr_pmdown_time.attr)
  return attr->mode;
 return rtd->num_codecs ? attr->mode : 0;
}
