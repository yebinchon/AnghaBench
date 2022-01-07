
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_intelhad {scalar_t__ dp_output; } ;


 int AUD_N_ENABLE ;
 int BIT (int) ;
 int DP_NAUD_VAL ;
 int had_calculate_n_value (int) ;
 int had_write_register (struct snd_intelhad*,int ,int) ;

__attribute__((used)) static int had_prog_n(u32 aud_samp_freq, u32 *n_param,
        struct snd_intelhad *intelhaddata)
{
 int n_val;

 if (intelhaddata->dp_output) {
  n_val = DP_NAUD_VAL;
 } else
  n_val = had_calculate_n_value(aud_samp_freq);

 if (n_val < 0)
  return n_val;

 had_write_register(intelhaddata, AUD_N_ENABLE, (BIT(24) | n_val));
 *n_param = n_val;
 return 0;
}
