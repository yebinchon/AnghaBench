
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int dev_to_hdac_dev (struct device*) ;
 int snd_hdac_codec_modalias (int ,char*,int) ;

__attribute__((used)) static ssize_t modalias_show(struct device *dev, struct device_attribute *attr,
        char *buf)
{
 return snd_hdac_codec_modalias(dev_to_hdac_dev(dev), buf, 256);
}
