
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_component {int dummy; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int PMADC ;
 int PMDAC ;
 int PMVR ;
 int PW_MGMT1 ;
 int RSTN ;




 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int ak4613_set_bias_level(struct snd_soc_component *component,
     enum snd_soc_bias_level level)
{
 u8 mgmt1 = 0;

 switch (level) {
 case 130:
  mgmt1 |= RSTN;

 case 129:
  mgmt1 |= PMADC | PMDAC;

 case 128:
  mgmt1 |= PMVR;

 case 131:
 default:
  break;
 }

 snd_soc_component_write(component, PW_MGMT1, mgmt1);

 return 0;
}
