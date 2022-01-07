
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {struct snd_soc_dai* cpu_dai; } ;
struct snd_soc_dai {int dummy; } ;
struct omap_mcbsp {int dev; int st_data; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int dev_err (int ,char*,int) ;
 int dev_warn (int ,char*) ;
 int omap_mcbsp2_st_controls ;
 int omap_mcbsp3_st_controls ;
 int snd_soc_add_dai_controls (struct snd_soc_dai*,int ,int ) ;
 struct omap_mcbsp* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

int omap_mcbsp_st_add_controls(struct snd_soc_pcm_runtime *rtd, int port_id)
{
 struct snd_soc_dai *cpu_dai = rtd->cpu_dai;
 struct omap_mcbsp *mcbsp = snd_soc_dai_get_drvdata(cpu_dai);

 if (!mcbsp->st_data) {
  dev_warn(mcbsp->dev, "No sidetone data for port\n");
  return 0;
 }

 switch (port_id) {
 case 2:
  return snd_soc_add_dai_controls(cpu_dai,
     omap_mcbsp2_st_controls,
     ARRAY_SIZE(omap_mcbsp2_st_controls));
 case 3:
  return snd_soc_add_dai_controls(cpu_dai,
     omap_mcbsp3_st_controls,
     ARRAY_SIZE(omap_mcbsp3_st_controls));
 default:
  dev_err(mcbsp->dev, "Port %d not supported\n", port_id);
  break;
 }

 return -EINVAL;
}
