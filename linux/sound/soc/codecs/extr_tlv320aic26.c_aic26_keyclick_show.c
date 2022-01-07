
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct aic26 {int component; } ;
typedef int ssize_t ;


 int AIC26_REG_AUDIO_CTRL2 ;
 struct aic26* dev_get_drvdata (struct device*) ;
 int snd_soc_component_read32 (int ,int ) ;
 int sprintf (char*,char*,int,int,int) ;

__attribute__((used)) static ssize_t aic26_keyclick_show(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 struct aic26 *aic26 = dev_get_drvdata(dev);
 int val, amp, freq, len;

 val = snd_soc_component_read32(aic26->component, AIC26_REG_AUDIO_CTRL2);
 amp = (val >> 12) & 0x7;
 freq = (125 << ((val >> 8) & 0x7)) >> 1;
 len = 2 * (1 + ((val >> 4) & 0xf));

 return sprintf(buf, "amp=%x freq=%iHz len=%iclks\n", amp, freq, len);
}
