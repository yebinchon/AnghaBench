
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int TAS571X_SYS_CTRL_2_REG ;
 int TAS571X_SYS_CTRL_2_SDN_MASK ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int tas571x_mute(struct snd_soc_dai *dai, int mute)
{
 struct snd_soc_component *component = dai->component;
 u8 sysctl2;
 int ret;

 sysctl2 = mute ? TAS571X_SYS_CTRL_2_SDN_MASK : 0;

 ret = snd_soc_component_update_bits(component,
       TAS571X_SYS_CTRL_2_REG,
       TAS571X_SYS_CTRL_2_SDN_MASK,
       sysctl2);
 usleep_range(1000, 2000);

 return ret;
}
