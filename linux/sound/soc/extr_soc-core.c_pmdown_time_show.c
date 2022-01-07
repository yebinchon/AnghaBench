
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int pmdown_time; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct snd_soc_pcm_runtime* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int ) ;

__attribute__((used)) static ssize_t pmdown_time_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct snd_soc_pcm_runtime *rtd = dev_get_drvdata(dev);

 return sprintf(buf, "%ld\n", rtd->pmdown_time);
}
