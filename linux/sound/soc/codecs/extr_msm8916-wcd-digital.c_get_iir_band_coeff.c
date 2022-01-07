
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct snd_soc_component {int dummy; } ;


 int BAND_MAX ;
 scalar_t__ LPASS_CDC_IIR1_COEF_B1_CTL ;
 scalar_t__ LPASS_CDC_IIR1_COEF_B2_CTL ;
 int snd_soc_component_read32 (struct snd_soc_component*,scalar_t__) ;
 int snd_soc_component_write (struct snd_soc_component*,scalar_t__,int) ;

__attribute__((used)) static uint32_t get_iir_band_coeff(struct snd_soc_component *component,
       int iir_idx, int band_idx,
       int coeff_idx)
{
 uint32_t value = 0;


 snd_soc_component_write(component,
  (LPASS_CDC_IIR1_COEF_B1_CTL + 64 * iir_idx),
  ((band_idx * BAND_MAX + coeff_idx)
  * sizeof(uint32_t)) & 0x7F);

 value |= snd_soc_component_read32(component,
  (LPASS_CDC_IIR1_COEF_B2_CTL + 64 * iir_idx));

 snd_soc_component_write(component,
  (LPASS_CDC_IIR1_COEF_B1_CTL + 64 * iir_idx),
  ((band_idx * BAND_MAX + coeff_idx)
  * sizeof(uint32_t) + 1) & 0x7F);

 value |= (snd_soc_component_read32(component,
  (LPASS_CDC_IIR1_COEF_B2_CTL + 64 * iir_idx)) << 8);

 snd_soc_component_write(component,
  (LPASS_CDC_IIR1_COEF_B1_CTL + 64 * iir_idx),
  ((band_idx * BAND_MAX + coeff_idx)
  * sizeof(uint32_t) + 2) & 0x7F);

 value |= (snd_soc_component_read32(component,
  (LPASS_CDC_IIR1_COEF_B2_CTL + 64 * iir_idx)) << 16);

 snd_soc_component_write(component,
  (LPASS_CDC_IIR1_COEF_B1_CTL + 64 * iir_idx),
  ((band_idx * BAND_MAX + coeff_idx)
  * sizeof(uint32_t) + 3) & 0x7F);


 value |= ((snd_soc_component_read32(component,
   (LPASS_CDC_IIR1_COEF_B2_CTL + 64 * iir_idx)) & 0x3f) << 24);
 return value;

}
