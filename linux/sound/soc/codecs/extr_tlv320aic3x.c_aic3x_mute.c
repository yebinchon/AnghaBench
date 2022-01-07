
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int LDAC_VOL ;
 int MUTE_ON ;
 int RDAC_VOL ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int aic3x_mute(struct snd_soc_dai *dai, int mute)
{
 struct snd_soc_component *component = dai->component;
 u8 ldac_reg = snd_soc_component_read32(component, LDAC_VOL) & ~MUTE_ON;
 u8 rdac_reg = snd_soc_component_read32(component, RDAC_VOL) & ~MUTE_ON;

 if (mute) {
  snd_soc_component_write(component, LDAC_VOL, ldac_reg | MUTE_ON);
  snd_soc_component_write(component, RDAC_VOL, rdac_reg | MUTE_ON);
 } else {
  snd_soc_component_write(component, LDAC_VOL, ldac_reg);
  snd_soc_component_write(component, RDAC_VOL, rdac_reg);
 }

 return 0;
}
