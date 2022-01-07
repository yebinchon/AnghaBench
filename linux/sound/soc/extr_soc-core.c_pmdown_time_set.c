
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int pmdown_time; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct snd_soc_pcm_runtime* dev_get_drvdata (struct device*) ;
 int kstrtol (char const*,int,int *) ;

__attribute__((used)) static ssize_t pmdown_time_set(struct device *dev,
          struct device_attribute *attr,
          const char *buf, size_t count)
{
 struct snd_soc_pcm_runtime *rtd = dev_get_drvdata(dev);
 int ret;

 ret = kstrtol(buf, 10, &rtd->pmdown_time);
 if (ret)
  return ret;

 return count;
}
