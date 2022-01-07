
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int shift; int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct madera_priv {int out_up_delay; int out_down_delay; int out_down_pending; int out_up_pending; struct madera* madera; } ;
struct madera {int type; } ;
 int msleep (int) ;
 struct madera_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

int madera_out_ev(struct snd_soc_dapm_widget *w,
    struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct madera_priv *priv = snd_soc_component_get_drvdata(component);
 struct madera *madera = priv->madera;
 int out_up_delay;

 switch (madera->type) {
 case 141:
 case 140:
 case 142:
 case 139:
 case 138:
  out_up_delay = 6;
  break;
 default:
  out_up_delay = 17;
  break;
 }

 switch (event) {
 case 128:
  switch (w->shift) {
  case 137:
  case 136:
  case 135:
  case 134:
  case 133:
  case 132:
   priv->out_up_pending++;
   priv->out_up_delay += out_up_delay;
   break;
  default:
   break;
  }
  break;

 case 130:
  switch (w->shift) {
  case 137:
  case 136:
  case 135:
  case 134:
  case 133:
  case 132:
   priv->out_up_pending--;
   if (!priv->out_up_pending) {
    msleep(priv->out_up_delay);
    priv->out_up_delay = 0;
   }
   break;

  default:
   break;
  }
  break;

 case 129:
  switch (w->shift) {
  case 137:
  case 136:
  case 135:
  case 134:
  case 133:
  case 132:
   priv->out_down_pending++;
   priv->out_down_delay++;
   break;
  default:
   break;
  }
  break;

 case 131:
  switch (w->shift) {
  case 137:
  case 136:
  case 135:
  case 134:
  case 133:
  case 132:
   priv->out_down_pending--;
   if (!priv->out_down_pending) {
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
