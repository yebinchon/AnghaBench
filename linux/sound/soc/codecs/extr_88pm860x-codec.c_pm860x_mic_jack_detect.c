
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_jack {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct TYPE_2__ {int mic_det; struct snd_soc_jack* mic_jack; } ;
struct pm860x_priv {int i2c; TYPE_1__ det; } ;


 int MICDET_MASK ;
 int REG_MIC_DET ;
 int SND_JACK_MICROPHONE ;
 int pm860x_component_handler (int ,struct pm860x_priv*) ;
 int pm860x_set_bits (int ,int ,int ,int ) ;
 struct pm860x_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

int pm860x_mic_jack_detect(struct snd_soc_component *component,
      struct snd_soc_jack *jack, int det)
{
 struct pm860x_priv *pm860x = snd_soc_component_get_drvdata(component);

 pm860x->det.mic_jack = jack;
 pm860x->det.mic_det = det;

 if (det & SND_JACK_MICROPHONE)
  pm860x_set_bits(pm860x->i2c, REG_MIC_DET,
    MICDET_MASK, MICDET_MASK);


 pm860x_component_handler(0, pm860x);
 return 0;
}
