
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcd9335_codec {unsigned int mclk_rate; int mclk; } ;
struct snd_soc_component {int dev; } ;


 int WCD9335_CODEC_RPM_CLK_MCLK_CFG ;
 int WCD9335_CODEC_RPM_CLK_MCLK_CFG_12P288MHZ ;
 int WCD9335_CODEC_RPM_CLK_MCLK_CFG_9P6MHZ ;
 int WCD9335_CODEC_RPM_CLK_MCLK_CFG_MCLK_MASK ;
 unsigned int WCD9335_MCLK_CLK_12P288MHZ ;
 unsigned int WCD9335_MCLK_CLK_9P6MHZ ;
 int clk_set_rate (int ,unsigned int) ;
 struct wcd9335_codec* dev_get_drvdata (int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static int wcd9335_codec_set_sysclk(struct snd_soc_component *comp,
        int clk_id, int source,
        unsigned int freq, int dir)
{
 struct wcd9335_codec *wcd = dev_get_drvdata(comp->dev);

 wcd->mclk_rate = freq;

 if (wcd->mclk_rate == WCD9335_MCLK_CLK_12P288MHZ)
  snd_soc_component_update_bits(comp,
    WCD9335_CODEC_RPM_CLK_MCLK_CFG,
    WCD9335_CODEC_RPM_CLK_MCLK_CFG_MCLK_MASK,
    WCD9335_CODEC_RPM_CLK_MCLK_CFG_12P288MHZ);
 else if (wcd->mclk_rate == WCD9335_MCLK_CLK_9P6MHZ)
  snd_soc_component_update_bits(comp,
    WCD9335_CODEC_RPM_CLK_MCLK_CFG,
    WCD9335_CODEC_RPM_CLK_MCLK_CFG_MCLK_MASK,
    WCD9335_CODEC_RPM_CLK_MCLK_CFG_9P6MHZ);

 return clk_set_rate(wcd->mclk, freq);
}
