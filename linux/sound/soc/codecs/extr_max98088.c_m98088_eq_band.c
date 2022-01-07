
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_component {int dummy; } ;


 int M98088_BYTE0 (int ) ;
 int M98088_BYTE1 (int ) ;
 int M98088_COEFS_PER_BAND ;
 unsigned int M98088_REG_52_DAI1_EQ_BASE ;
 unsigned int M98088_REG_84_DAI2_EQ_BASE ;
 scalar_t__ WARN_ON (int) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int ) ;

__attribute__((used)) static void m98088_eq_band(struct snd_soc_component *component, unsigned int dai,
                   unsigned int band, u16 *coefs)
{
       unsigned int eq_reg;
       unsigned int i;

 if (WARN_ON(band > 4) ||
     WARN_ON(dai > 1))
  return;


       eq_reg = dai ? M98088_REG_84_DAI2_EQ_BASE : M98088_REG_52_DAI1_EQ_BASE;


       eq_reg += band * (M98088_COEFS_PER_BAND << 1);


       for (i = 0; i < M98088_COEFS_PER_BAND; i++) {
               snd_soc_component_write(component, eq_reg++, M98088_BYTE1(coefs[i]));
               snd_soc_component_write(component, eq_reg++, M98088_BYTE0(coefs[i]));
       }
}
