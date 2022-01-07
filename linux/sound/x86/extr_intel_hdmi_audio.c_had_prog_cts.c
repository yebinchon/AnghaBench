
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct snd_intelhad {int dev; scalar_t__ dp_output; } ;


 int AUD_HDMI_CTS ;
 int BIT (int) ;
 int dev_dbg (int ,char*,int,int,int) ;
 int div64_u64 (int,int) ;
 int had_calculate_maud_value (int,int) ;
 int had_write_register (struct snd_intelhad*,int ,int) ;

__attribute__((used)) static void had_prog_cts(u32 aud_samp_freq, u32 tmds, u32 link_rate,
    u32 n_param, struct snd_intelhad *intelhaddata)
{
 u32 cts_val;
 u64 dividend, divisor;

 if (intelhaddata->dp_output) {

  cts_val = had_calculate_maud_value(aud_samp_freq, link_rate);
 } else {

  dividend = (u64)tmds * n_param*1000;
  divisor = 128 * aud_samp_freq;
  cts_val = div64_u64(dividend, divisor);
 }
 dev_dbg(intelhaddata->dev, "TMDS value=%d, N value=%d, CTS Value=%d\n",
   tmds, n_param, cts_val);
 had_write_register(intelhaddata, AUD_HDMI_CTS, (BIT(24) | cts_val));
}
