
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm2200_priv {unsigned int sysclk; } ;
struct snd_soc_component {int dev; } ;


 int EINVAL ;





 int WM2200_CLOCKING_3 ;
 int WM2200_SYSCLK_FREQ_MASK ;
 int WM2200_SYSCLK_FREQ_SHIFT ;
 int WM2200_SYSCLK_SRC_MASK ;
 int dev_err (int ,char*,unsigned int) ;
 struct wm2200_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int wm2200_set_sysclk(struct snd_soc_component *component, int clk_id,
        int source, unsigned int freq, int dir)
{
 struct wm2200_priv *wm2200 = snd_soc_component_get_drvdata(component);
 int fval;

 switch (clk_id) {
 case 128:
  break;

 default:
  dev_err(component->dev, "Unknown clock %d\n", clk_id);
  return -EINVAL;
 }

 switch (source) {
 case 130:
 case 129:
 case 131:
 case 132:
  break;
 default:
  dev_err(component->dev, "Invalid source %d\n", source);
  return -EINVAL;
 }

 switch (freq) {
 case 22579200:
 case 24576000:
  fval = 2;
  break;
 default:
  dev_err(component->dev, "Invalid clock rate: %d\n", freq);
  return -EINVAL;
 }





 snd_soc_component_update_bits(component, WM2200_CLOCKING_3, WM2200_SYSCLK_FREQ_MASK |
       WM2200_SYSCLK_SRC_MASK,
       fval << WM2200_SYSCLK_FREQ_SHIFT | source);

 wm2200->sysclk = freq;

 return 0;
}
