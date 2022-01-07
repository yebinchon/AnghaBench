
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sof_ipc_comp_config {int frame_fmt; int periods_source; int periods_sink; } ;
struct snd_sof_dev {int dev; } ;
struct snd_soc_component {int dummy; } ;


 int dev_dbg (int ,char*,int ,int ,int ) ;
 struct snd_sof_dev* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static void sof_dbg_comp_config(struct snd_soc_component *scomp,
    struct sof_ipc_comp_config *config)
{
 struct snd_sof_dev *sdev = snd_soc_component_get_drvdata(scomp);

 dev_dbg(sdev->dev, " config: periods snk %d src %d fmt %d\n",
  config->periods_sink, config->periods_source,
  config->frame_fmt);
}
