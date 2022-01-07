
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;


 int AB8500_ANCCONF1 ;
 int AB8500_ANCCONF1_ANCFIRUPDATE ;
 int AB8500_ANCCONF5 ;
 int AB8500_ANCCONF6 ;
 int AB8500_ANC_FIR_COEFFS ;
 int BIT (int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,unsigned int) ;

__attribute__((used)) static void anc_fir(struct snd_soc_component *component,
  unsigned int bnk, unsigned int par, unsigned int val)
{
 if (par == 0 && bnk == 0)
  snd_soc_component_update_bits(component, AB8500_ANCCONF1,
   BIT(AB8500_ANCCONF1_ANCFIRUPDATE),
   BIT(AB8500_ANCCONF1_ANCFIRUPDATE));

 snd_soc_component_write(component, AB8500_ANCCONF5, val >> 8 & 0xff);
 snd_soc_component_write(component, AB8500_ANCCONF6, val & 0xff);

 if (par == AB8500_ANC_FIR_COEFFS - 1 && bnk == 1)
  snd_soc_component_update_bits(component, AB8500_ANCCONF1,
   BIT(AB8500_ANCCONF1_ANCFIRUPDATE), 0);
}
