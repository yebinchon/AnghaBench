
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_component {int dummy; } ;


 unsigned int M98095_110_DAI1_EQ_BASE ;
 unsigned int M98095_142_DAI2_EQ_BASE ;
 int M98095_BYTE0 (int ) ;
 int M98095_BYTE1 (int ) ;
 int M98095_COEFS_PER_BAND ;
 scalar_t__ WARN_ON (int) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int ) ;

__attribute__((used)) static void m98095_eq_band(struct snd_soc_component *component, unsigned int dai,
      unsigned int band, u16 *coefs)
{
 unsigned int eq_reg;
 unsigned int i;

 if (WARN_ON(band > 4) ||
     WARN_ON(dai > 1))
  return;


 eq_reg = dai ? M98095_142_DAI2_EQ_BASE : M98095_110_DAI1_EQ_BASE;


 eq_reg += band * (M98095_COEFS_PER_BAND << 1);


 for (i = 0; i < M98095_COEFS_PER_BAND; i++) {
  snd_soc_component_write(component, eq_reg++, M98095_BYTE1(coefs[i]));
  snd_soc_component_write(component, eq_reg++, M98095_BYTE0(coefs[i]));
 }
}
