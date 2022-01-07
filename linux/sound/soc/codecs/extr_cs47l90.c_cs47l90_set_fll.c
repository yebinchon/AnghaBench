
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct cs47l90 {int * fll; } ;


 int EINVAL ;





 int madera_set_fll_ao_refclk (int *,int,unsigned int,unsigned int) ;
 int madera_set_fll_refclk (int *,int,unsigned int,unsigned int) ;
 int madera_set_fll_syncclk (int *,int,unsigned int,unsigned int) ;
 struct cs47l90* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int cs47l90_set_fll(struct snd_soc_component *component, int fll_id,
      int source, unsigned int fref, unsigned int fout)
{
 struct cs47l90 *cs47l90 = snd_soc_component_get_drvdata(component);

 switch (fll_id) {
 case 132:
  return madera_set_fll_refclk(&cs47l90->fll[0], source, fref,
          fout);
 case 130:
  return madera_set_fll_refclk(&cs47l90->fll[1], source, fref,
          fout);
 case 128:
  return madera_set_fll_ao_refclk(&cs47l90->fll[2], source, fref,
      fout);
 case 131:
  return madera_set_fll_syncclk(&cs47l90->fll[0], source, fref,
           fout);
 case 129:
  return madera_set_fll_syncclk(&cs47l90->fll[1], source, fref,
           fout);
 default:
  return -EINVAL;
 }
}
