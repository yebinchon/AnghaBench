
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int shift; int dapm; } ;
struct snd_soc_component {int dev; } ;
struct snd_kcontrol {int dummy; } ;
struct arizona_priv {int out_up_delay; int out_down_delay; int out_down_pending; int out_up_pending; struct arizona* arizona; } ;
struct arizona {int type; } ;
 int dev_dbg (int ,char*,int) ;
 int msleep (int) ;
 struct arizona_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

int arizona_out_ev(struct snd_soc_dapm_widget *w,
     struct snd_kcontrol *kcontrol,
     int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct arizona_priv *priv = snd_soc_component_get_drvdata(component);
 struct arizona *arizona = priv->arizona;

 switch (event) {
 case 132:
  switch (w->shift) {
  case 143:
  case 142:
  case 141:
  case 140:
  case 139:
  case 138:
   priv->out_up_pending++;
   priv->out_up_delay += 17;
   break;
  case 137:
  case 136:
   priv->out_up_pending++;
   switch (arizona->type) {
   case 130:
   case 129:
    break;
   default:
    priv->out_up_delay += 10;
    break;
   }
   break;
  default:
   break;
  }
  break;
 case 134:
  switch (w->shift) {
  case 143:
  case 142:
  case 141:
  case 140:
  case 139:
  case 138:
  case 137:
  case 136:
   priv->out_up_pending--;
   if (!priv->out_up_pending && priv->out_up_delay) {
    dev_dbg(component->dev, "Power up delay: %d\n",
     priv->out_up_delay);
    msleep(priv->out_up_delay);
    priv->out_up_delay = 0;
   }
   break;

  default:
   break;
  }
  break;
 case 133:
  switch (w->shift) {
  case 143:
  case 142:
  case 141:
  case 140:
  case 139:
  case 138:
   priv->out_down_pending++;
   priv->out_down_delay++;
   break;
  case 137:
  case 136:
   priv->out_down_pending++;
   switch (arizona->type) {
   case 130:
   case 129:
    break;
   case 128:
   case 131:
    priv->out_down_delay += 5;
    break;
   default:
    priv->out_down_delay++;
    break;
   }
  default:
   break;
  }
  break;
 case 135:
  switch (w->shift) {
  case 143:
  case 142:
  case 141:
  case 140:
  case 139:
  case 138:
  case 137:
  case 136:
   priv->out_down_pending--;
   if (!priv->out_down_pending && priv->out_down_delay) {
    dev_dbg(component->dev, "Power down delay: %d\n",
     priv->out_down_delay);
    msleep(priv->out_down_delay);
    priv->out_down_delay = 0;
   }
   break;
  default:
   break;
  }
  break;
 default:
  break;
 }

 return 0;
}
