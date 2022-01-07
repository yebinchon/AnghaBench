
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct cs47l92 {int * fll; } ;


 int EINVAL ;


 int madera_fllhj_set_refclk (int *,int,unsigned int,unsigned int) ;
 struct cs47l92* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int cs47l92_set_fll(struct snd_soc_component *component, int fll_id,
      int source, unsigned int fref, unsigned int fout)
{
 struct cs47l92 *cs47l92 = snd_soc_component_get_drvdata(component);

 switch (fll_id) {
 case 129:
  return madera_fllhj_set_refclk(&cs47l92->fll[0], source, fref,
            fout);
 case 128:
  return madera_fllhj_set_refclk(&cs47l92->fll[1], source, fref,
            fout);
 default:
  return -EINVAL;
 }
}
