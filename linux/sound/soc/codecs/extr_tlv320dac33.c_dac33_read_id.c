
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_component {int dummy; } ;


 scalar_t__ DAC33_DEVICE_ID_MSB ;
 int dac33_read (struct snd_soc_component*,scalar_t__,int *) ;

__attribute__((used)) static inline int dac33_read_id(struct snd_soc_component *component)
{
 int i, ret = 0;
 u8 reg;

 for (i = 0; i < 3; i++) {
  ret = dac33_read(component, DAC33_DEVICE_ID_MSB + i, &reg);
  if (ret < 0)
   break;
 }

 return ret;
}
