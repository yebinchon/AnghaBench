
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct soc_tplg {TYPE_2__* comp; int ops; int index; int dev; } ;
struct snd_soc_tplg_link_config {char* name; char* stream_name; scalar_t__ flags; scalar_t__ flag_mask; scalar_t__ num_hw_configs; scalar_t__ id; } ;
struct TYPE_3__ {int list; int type; int ops; int index; } ;
struct snd_soc_dai_link {TYPE_1__ dobj; } ;
struct TYPE_4__ {int dobj_list; int card; } ;


 int EINVAL ;
 size_t SNDRV_CTL_ELEM_ID_NAME_MAXLEN ;
 int SND_SOC_DOBJ_BACKEND_LINK ;
 int dev_err (int ,char*,...) ;
 int le32_to_cpu (scalar_t__) ;
 int list_add (int *,int *) ;
 int set_link_flags (struct snd_soc_dai_link*,int ,int ) ;
 int set_link_hw_format (struct snd_soc_dai_link*,struct snd_soc_tplg_link_config*) ;
 struct snd_soc_dai_link* snd_soc_find_dai_link (int ,int ,char const*,char const*) ;
 int soc_tplg_dai_link_load (struct soc_tplg*,struct snd_soc_dai_link*,struct snd_soc_tplg_link_config*) ;
 size_t strnlen (char*,size_t) ;

__attribute__((used)) static int soc_tplg_link_config(struct soc_tplg *tplg,
 struct snd_soc_tplg_link_config *cfg)
{
 struct snd_soc_dai_link *link;
 const char *name, *stream_name;
 size_t len;
 int ret;

 len = strnlen(cfg->name, SNDRV_CTL_ELEM_ID_NAME_MAXLEN);
 if (len == SNDRV_CTL_ELEM_ID_NAME_MAXLEN)
  return -EINVAL;
 else if (len)
  name = cfg->name;
 else
  name = ((void*)0);

 len = strnlen(cfg->stream_name, SNDRV_CTL_ELEM_ID_NAME_MAXLEN);
 if (len == SNDRV_CTL_ELEM_ID_NAME_MAXLEN)
  return -EINVAL;
 else if (len)
  stream_name = cfg->stream_name;
 else
  stream_name = ((void*)0);

 link = snd_soc_find_dai_link(tplg->comp->card, le32_to_cpu(cfg->id),
         name, stream_name);
 if (!link) {
  dev_err(tplg->dev, "ASoC: physical link %s (id %d) not exist\n",
   name, cfg->id);
  return -EINVAL;
 }


 if (cfg->num_hw_configs)
  set_link_hw_format(link, cfg);


 if (cfg->flag_mask)
  set_link_flags(link,
          le32_to_cpu(cfg->flag_mask),
          le32_to_cpu(cfg->flags));


 ret = soc_tplg_dai_link_load(tplg, link, cfg);
 if (ret < 0) {
  dev_err(tplg->dev, "ASoC: physical link loading failed\n");
  return ret;
 }


 link->dobj.index = tplg->index;
 link->dobj.ops = tplg->ops;
 link->dobj.type = SND_SOC_DOBJ_BACKEND_LINK;
 list_add(&link->dobj.list, &tplg->comp->dobj_list);

 return 0;
}
