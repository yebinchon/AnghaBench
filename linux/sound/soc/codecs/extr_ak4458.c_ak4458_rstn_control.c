
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;


 int AK4458_00_CONTROL1 ;
 int AK4458_RSTN_MASK ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int) ;

__attribute__((used)) static int ak4458_rstn_control(struct snd_soc_component *component, int bit)
{
 int ret;

 if (bit)
  ret = snd_soc_component_update_bits(component,
       AK4458_00_CONTROL1,
       AK4458_RSTN_MASK,
       0x1);
 else
  ret = snd_soc_component_update_bits(component,
       AK4458_00_CONTROL1,
       AK4458_RSTN_MASK,
       0x0);
 if (ret < 0)
  return ret;

 return 0;
}
