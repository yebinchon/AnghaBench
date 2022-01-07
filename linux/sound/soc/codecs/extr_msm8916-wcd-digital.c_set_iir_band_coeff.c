
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct snd_soc_component {int dummy; } ;


 scalar_t__ LPASS_CDC_IIR1_COEF_B2_CTL ;
 int snd_soc_component_write (struct snd_soc_component*,scalar_t__,int) ;

__attribute__((used)) static void set_iir_band_coeff(struct snd_soc_component *component,
    int iir_idx, int band_idx,
    uint32_t value)
{
 snd_soc_component_write(component,
  (LPASS_CDC_IIR1_COEF_B2_CTL + 64 * iir_idx),
  (value & 0xFF));

 snd_soc_component_write(component,
  (LPASS_CDC_IIR1_COEF_B2_CTL + 64 * iir_idx),
  (value >> 8) & 0xFF);

 snd_soc_component_write(component,
  (LPASS_CDC_IIR1_COEF_B2_CTL + 64 * iir_idx),
  (value >> 16) & 0xFF);


 snd_soc_component_write(component,
  (LPASS_CDC_IIR1_COEF_B2_CTL + 64 * iir_idx),
  (value >> 24) & 0x3F);
}
