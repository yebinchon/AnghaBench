
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int card; struct snd_soc_dai* codec_dai; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int SND_JACK_BTN_0 ;
 int SND_JACK_HEADSET ;
 int SND_JACK_LINEOUT ;
 int WM8996_HPSEL_GPIO ;
 int WM8996_SYSCLK_MCLK2 ;
 int gpio_direction_output (int ,int ) ;
 int gpio_request (int ,char*) ;
 int pr_err (char*,int) ;
 int snd_soc_card_jack_new (int ,char*,int,int *,int ,int ) ;
 int snd_soc_dai_set_sysclk (struct snd_soc_dai*,int ,int,int ) ;
 int speyside_headset ;
 int speyside_headset_pins ;
 int speyside_jack_polarity ;
 int speyside_set_polarity ;
 int wm8996_detect (struct snd_soc_component*,int *,int ) ;

__attribute__((used)) static int speyside_wm8996_init(struct snd_soc_pcm_runtime *rtd)
{
 struct snd_soc_dai *dai = rtd->codec_dai;
 struct snd_soc_component *component = dai->component;
 int ret;

 ret = snd_soc_dai_set_sysclk(dai, WM8996_SYSCLK_MCLK2, 32768, 0);
 if (ret < 0)
  return ret;

 ret = gpio_request(WM8996_HPSEL_GPIO, "HP_SEL");
 if (ret != 0)
  pr_err("Failed to request HP_SEL GPIO: %d\n", ret);
 gpio_direction_output(WM8996_HPSEL_GPIO, speyside_jack_polarity);

 ret = snd_soc_card_jack_new(rtd->card, "Headset", SND_JACK_LINEOUT |
        SND_JACK_HEADSET | SND_JACK_BTN_0,
        &speyside_headset, speyside_headset_pins,
        ARRAY_SIZE(speyside_headset_pins));
 if (ret)
  return ret;

 wm8996_detect(component, &speyside_headset, speyside_set_polarity);

 return 0;
}
