
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_component {int dummy; } ;



 int CS42L73_ASPC ;

 int CS42L73_VXSPFS ;

 int cs42l73_get_xspfs_coeff (int) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static void cs42l73_update_asrc(struct snd_soc_component *component, int id, int srate)
{
 u8 spfs = 0;

 if (srate > 0)
  spfs = cs42l73_get_xspfs_coeff(srate);

 switch (id) {
 case 128:
  snd_soc_component_update_bits(component, CS42L73_VXSPFS, 0x0f, spfs);
 break;
 case 130:
  snd_soc_component_update_bits(component, CS42L73_ASPC, 0x3c, spfs << 2);
 break;
 case 129:
  snd_soc_component_update_bits(component, CS42L73_VXSPFS, 0xf0, spfs << 4);
 break;
 default:
 break;
 }
}
