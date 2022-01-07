
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;


 int BIT (unsigned int) ;
 int snd_soc_component_read (struct snd_soc_component*,unsigned int,unsigned int*) ;

__attribute__((used)) static int snd_soc_read_signed(struct snd_soc_component *component,
 unsigned int reg, unsigned int mask, unsigned int shift,
 unsigned int sign_bit, int *signed_val)
{
 int ret;
 unsigned int val;

 ret = snd_soc_component_read(component, reg, &val);
 if (ret < 0)
  return ret;

 val = (val >> shift) & mask;

 if (!sign_bit) {
  *signed_val = val;
  return 0;
 }


 if (!(val & BIT(sign_bit))) {
  *signed_val = val;
  return 0;
 }

 ret = val;







 ret |= ~((int)(BIT(sign_bit) - 1));

 *signed_val = ret;

 return 0;
}
