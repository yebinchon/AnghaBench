
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct rt274_priv {int sys_clk; scalar_t__ master; } ;


 int EINVAL ;
 int RT274_ADC_FORMAT ;
 int RT274_DAC_FORMAT ;
 int RT274_I2S_CTRL1 ;
 int dev_dbg (int ,char*,unsigned int) ;
 int dev_err (int ,char*,int,...) ;
 int params_channels (struct snd_pcm_hw_params*) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int params_width (struct snd_pcm_hw_params*) ;
 struct rt274_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,unsigned int) ;

__attribute__((used)) static int rt274_hw_params(struct snd_pcm_substream *substream,
       struct snd_pcm_hw_params *params,
       struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct rt274_priv *rt274 = snd_soc_component_get_drvdata(component);
 unsigned int val = 0;
 int d_len_code = 0, c_len_code = 0;

 switch (params_rate(params)) {

 case 44100:
 case 48000:
  break;
 default:
  dev_err(component->dev, "Unsupported sample rate %d\n",
     params_rate(params));
  return -EINVAL;
 }
 switch (rt274->sys_clk) {
 case 12288000:
 case 24576000:
  if (params_rate(params) != 48000) {
   dev_err(component->dev, "Sys_clk is not matched (%d %d)\n",
     params_rate(params), rt274->sys_clk);
   return -EINVAL;
  }
  break;
 case 11289600:
 case 22579200:
  if (params_rate(params) != 44100) {
   dev_err(component->dev, "Sys_clk is not matched (%d %d)\n",
     params_rate(params), rt274->sys_clk);
   return -EINVAL;
  }
  break;
 }

 if (params_channels(params) <= 16) {

  val |= (params_channels(params) - 1);
 } else {
  dev_err(component->dev, "Unsupported channels %d\n",
     params_channels(params));
  return -EINVAL;
 }

 switch (params_width(params)) {

 case 16:
  d_len_code = 0;
  c_len_code = 0;
  val |= (0x1 << 4);
  break;
 case 32:
  d_len_code = 2;
  c_len_code = 3;
  val |= (0x4 << 4);
  break;
 case 20:
  d_len_code = 1;
  c_len_code = 1;
  val |= (0x2 << 4);
  break;
 case 24:
  d_len_code = 2;
  c_len_code = 2;
  val |= (0x3 << 4);
  break;
 case 8:
  d_len_code = 3;
  c_len_code = 0;
  break;
 default:
  return -EINVAL;
 }

 if (rt274->master)
  c_len_code = 0x3;

 snd_soc_component_update_bits(component,
  RT274_I2S_CTRL1, 0xc018, d_len_code << 3 | c_len_code << 14);
 dev_dbg(component->dev, "format val = 0x%x\n", val);

 snd_soc_component_update_bits(component, RT274_DAC_FORMAT, 0x407f, val);
 snd_soc_component_update_bits(component, RT274_ADC_FORMAT, 0x407f, val);

 return 0;
}
