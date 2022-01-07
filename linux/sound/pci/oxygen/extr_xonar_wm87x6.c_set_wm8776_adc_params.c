
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_pcm_hw_params {int dummy; } ;
struct oxygen {int dummy; } ;


 int WM8776_ADCOSR ;
 int WM8776_ADCRATE_256 ;
 int WM8776_DACRATE_256 ;
 int WM8776_MSTRCTRL ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int wm8776_write_cached (struct oxygen*,int ,int) ;

__attribute__((used)) static void set_wm8776_adc_params(struct oxygen *chip,
      struct snd_pcm_hw_params *params)
{
 u16 reg;

 reg = WM8776_ADCRATE_256 | WM8776_DACRATE_256;
 if (params_rate(params) > 48000)
  reg |= WM8776_ADCOSR;
 wm8776_write_cached(chip, WM8776_MSTRCTRL, reg);
}
