
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ac97_codec_device {int vendor_id; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 struct ac97_codec_device* to_ac97_device (struct device*) ;

__attribute__((used)) static ssize_t vendor_id_show(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 struct ac97_codec_device *codec = to_ac97_device(dev);

 return sprintf(buf, "%08x", codec->vendor_id);
}
