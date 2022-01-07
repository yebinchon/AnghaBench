
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int AB8500_AUDIO ;
 int abx500_set_register_interruptible (struct device*,int ,unsigned int,unsigned int) ;

__attribute__((used)) static int ab8500_codec_write_reg(void *context, unsigned int reg,
      unsigned int value)
{
 struct device *dev = context;

 return abx500_set_register_interruptible(dev, AB8500_AUDIO,
       reg, value);
}
