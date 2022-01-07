
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int da7219_clk_enable (struct snd_pcm_substream*,int,int) ;
 int params_channels (struct snd_pcm_hw_params*) ;
 int params_format (struct snd_pcm_hw_params*) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int snd_pcm_format_width (int ) ;

__attribute__((used)) static int cz_da7219_params(struct snd_pcm_substream *substream,
          struct snd_pcm_hw_params *params)
{
 int wclk, bclk;

 wclk = params_rate(params);
 bclk = wclk * params_channels(params) *
  snd_pcm_format_width(params_format(params));





 if (bclk < (wclk * 64))
  bclk = wclk * 64;
 return da7219_clk_enable(substream, wclk, bclk);
}
