
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int driver_pins; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct hda_codec* dev_get_drvdata (struct device*) ;
 int pin_configs_show (struct hda_codec*,int *,char*) ;

__attribute__((used)) static ssize_t driver_pin_configs_show(struct device *dev,
           struct device_attribute *attr,
           char *buf)
{
 struct hda_codec *codec = dev_get_drvdata(dev);
 return pin_configs_show(codec, &codec->driver_pins, buf);
}
