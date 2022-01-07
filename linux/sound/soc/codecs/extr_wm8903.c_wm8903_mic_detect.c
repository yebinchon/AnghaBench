
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8903_priv {int mic_det; int mic_short; struct snd_soc_jack* mic_jack; } ;
struct snd_soc_jack {int dummy; } ;
struct snd_soc_component {int dev; } ;


 int WM8903_INTERRUPT_STATUS_1_MASK ;
 int WM8903_MICDET_EINT ;
 int WM8903_MICDET_ENA ;
 int WM8903_MICSHRT_EINT ;
 int WM8903_MIC_BIAS_CONTROL_0 ;
 int WM8903_WRITE_SEQUENCER_0 ;
 int WM8903_WSEQ_ENA ;
 int dev_dbg (int ,char*,int,int) ;
 struct wm8903_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

int wm8903_mic_detect(struct snd_soc_component *component, struct snd_soc_jack *jack,
        int det, int shrt)
{
 struct wm8903_priv *wm8903 = snd_soc_component_get_drvdata(component);
 int irq_mask = WM8903_MICDET_EINT | WM8903_MICSHRT_EINT;

 dev_dbg(component->dev, "Enabling microphone detection: %x %x\n",
  det, shrt);


 wm8903->mic_jack = jack;
 wm8903->mic_det = det;
 wm8903->mic_short = shrt;


 if (det)
  irq_mask &= ~WM8903_MICDET_EINT;
 if (shrt)
  irq_mask &= ~WM8903_MICSHRT_EINT;

 snd_soc_component_update_bits(component, WM8903_INTERRUPT_STATUS_1_MASK,
       WM8903_MICDET_EINT | WM8903_MICSHRT_EINT,
       irq_mask);

 if (det || shrt) {


  snd_soc_component_update_bits(component, WM8903_WRITE_SEQUENCER_0,
        WM8903_WSEQ_ENA, WM8903_WSEQ_ENA);
  snd_soc_component_update_bits(component, WM8903_MIC_BIAS_CONTROL_0,
        WM8903_MICDET_ENA, WM8903_MICDET_ENA);
 } else {
  snd_soc_component_update_bits(component, WM8903_MIC_BIAS_CONTROL_0,
        WM8903_MICDET_ENA, 0);
 }

 return 0;
}
