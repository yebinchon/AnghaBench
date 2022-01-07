
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int tplg ;
struct soc_tplg {int bytes_ext_ops_count; int bytes_ext_ops; int io_ops_count; int io_ops; int req_index; struct snd_soc_tplg_ops* ops; struct snd_soc_component* comp; int dev; struct firmware const* fw; } ;
struct snd_soc_tplg_ops {int bytes_ext_ops_count; int bytes_ext_ops; int io_ops_count; int io_ops; } ;
struct snd_soc_component {int dev; } ;
struct firmware {int dummy; } ;


 int SND_SOC_TPLG_INDEX_ALL ;
 int memset (struct soc_tplg*,int ,int) ;
 int snd_soc_tplg_component_remove (struct snd_soc_component*,int ) ;
 int soc_tplg_load (struct soc_tplg*) ;

int snd_soc_tplg_component_load(struct snd_soc_component *comp,
 struct snd_soc_tplg_ops *ops, const struct firmware *fw, u32 id)
{
 struct soc_tplg tplg;
 int ret;


 memset(&tplg, 0, sizeof(tplg));
 tplg.fw = fw;
 tplg.dev = comp->dev;
 tplg.comp = comp;
 tplg.ops = ops;
 tplg.req_index = id;
 tplg.io_ops = ops->io_ops;
 tplg.io_ops_count = ops->io_ops_count;
 tplg.bytes_ext_ops = ops->bytes_ext_ops;
 tplg.bytes_ext_ops_count = ops->bytes_ext_ops_count;

 ret = soc_tplg_load(&tplg);

 if (ret)
  snd_soc_tplg_component_remove(comp, SND_SOC_TPLG_INDEX_ALL);

 return ret;
}
