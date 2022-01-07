
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm5110_priv {int * fll; } ;
struct snd_soc_component {int dummy; } ;


 int EINVAL ;




 int arizona_set_fll (int *,int,unsigned int,unsigned int) ;
 int arizona_set_fll_refclk (int *,int,unsigned int,unsigned int) ;
 struct wm5110_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int wm5110_set_fll(struct snd_soc_component *component, int fll_id,
     int source, unsigned int Fref, unsigned int Fout)
{
 struct wm5110_priv *wm5110 = snd_soc_component_get_drvdata(component);

 switch (fll_id) {
 case 131:
  return arizona_set_fll(&wm5110->fll[0], source, Fref, Fout);
 case 129:
  return arizona_set_fll(&wm5110->fll[1], source, Fref, Fout);
 case 130:
  return arizona_set_fll_refclk(&wm5110->fll[0], source, Fref,
           Fout);
 case 128:
  return arizona_set_fll_refclk(&wm5110->fll[1], source, Fref,
           Fout);
 default:
  return -EINVAL;
 }
}
