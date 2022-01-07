
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ GAIN_AUGMENT ;
 scalar_t__ SIDETONE_BASE ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ nau8825_intlog10_dec3 (scalar_t__) ;

__attribute__((used)) static u32 nau8825_xtalk_sidetone(u32 sig_org, u32 sig_cros)
{
 u32 gain, sidetone;

 if (WARN_ON(sig_org == 0 || sig_cros == 0))
  return 0;

 sig_org = nau8825_intlog10_dec3(sig_org);
 sig_cros = nau8825_intlog10_dec3(sig_cros);
 if (sig_org >= sig_cros)
  gain = (sig_org - sig_cros) * 20 + GAIN_AUGMENT;
 else
  gain = (sig_cros - sig_org) * 20 + GAIN_AUGMENT;
 sidetone = SIDETONE_BASE - gain * 2;
 sidetone /= 1000;

 return sidetone;
}
