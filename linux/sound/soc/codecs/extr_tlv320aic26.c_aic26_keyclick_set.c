
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct aic26 {int component; } ;
typedef size_t ssize_t ;


 int AIC26_REG_AUDIO_CTRL2 ;
 struct aic26* dev_get_drvdata (struct device*) ;
 int snd_soc_component_update_bits (int ,int ,int,int) ;

__attribute__((used)) static ssize_t aic26_keyclick_set(struct device *dev,
      struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct aic26 *aic26 = dev_get_drvdata(dev);

 snd_soc_component_update_bits(aic26->component, AIC26_REG_AUDIO_CTRL2,
       0x8000, 0x800);

 return count;
}
