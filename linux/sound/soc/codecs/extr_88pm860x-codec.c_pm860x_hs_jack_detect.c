
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_jack {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct TYPE_2__ {int hp_det; int hook_det; int hs_shrt; int lo_shrt; struct snd_soc_jack* hp_jack; } ;
struct pm860x_priv {int i2c; TYPE_1__ det; } ;


 int CLR_SHORT_HS1 ;
 int CLR_SHORT_HS2 ;
 int CLR_SHORT_LO1 ;
 int CLR_SHORT_LO2 ;
 int EN_HS_DET ;
 int REG_HS_DET ;
 int REG_SHORTS ;
 int SND_JACK_HEADPHONE ;
 int pm860x_component_handler (int ,struct pm860x_priv*) ;
 int pm860x_set_bits (int ,int ,int,int) ;
 struct pm860x_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

int pm860x_hs_jack_detect(struct snd_soc_component *component,
     struct snd_soc_jack *jack,
     int det, int hook, int hs_shrt, int lo_shrt)
{
 struct pm860x_priv *pm860x = snd_soc_component_get_drvdata(component);
 int data;

 pm860x->det.hp_jack = jack;
 pm860x->det.hp_det = det;
 pm860x->det.hook_det = hook;
 pm860x->det.hs_shrt = hs_shrt;
 pm860x->det.lo_shrt = lo_shrt;

 if (det & SND_JACK_HEADPHONE)
  pm860x_set_bits(pm860x->i2c, REG_HS_DET,
    EN_HS_DET, EN_HS_DET);

 if (hs_shrt) {
  data = CLR_SHORT_HS2 | CLR_SHORT_HS1;
  pm860x_set_bits(pm860x->i2c, REG_SHORTS, data, data);
 }

 if (lo_shrt) {
  data = CLR_SHORT_LO2 | CLR_SHORT_LO1;
  pm860x_set_bits(pm860x->i2c, REG_SHORTS, data, data);
 }


 pm860x_component_handler(0, pm860x);
 return 0;
}
