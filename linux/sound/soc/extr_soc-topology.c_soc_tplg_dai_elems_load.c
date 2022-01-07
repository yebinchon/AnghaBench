
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct soc_tplg {scalar_t__ pass; int dev; scalar_t__ pos; } ;
struct snd_soc_tplg_hdr {int count; } ;
struct TYPE_2__ {int size; } ;
struct snd_soc_tplg_dai {TYPE_1__ priv; int size; } ;


 int EINVAL ;
 scalar_t__ SOC_TPLG_PASS_BE_DAI ;
 int dev_dbg (int ,char*,int) ;
 int dev_err (int ,char*) ;
 int le32_to_cpu (int ) ;
 int soc_tplg_dai_config (struct soc_tplg*,struct snd_soc_tplg_dai*) ;

__attribute__((used)) static int soc_tplg_dai_elems_load(struct soc_tplg *tplg,
       struct snd_soc_tplg_hdr *hdr)
{
 struct snd_soc_tplg_dai *dai;
 int count;
 int i;

 count = le32_to_cpu(hdr->count);

 if (tplg->pass != SOC_TPLG_PASS_BE_DAI)
  return 0;


 for (i = 0; i < count; i++) {
  dai = (struct snd_soc_tplg_dai *)tplg->pos;
  if (le32_to_cpu(dai->size) != sizeof(*dai)) {
   dev_err(tplg->dev, "ASoC: invalid physical DAI size\n");
   return -EINVAL;
  }

  soc_tplg_dai_config(tplg, dai);
  tplg->pos += (sizeof(*dai) + le32_to_cpu(dai->priv.size));
 }

 dev_dbg(tplg->dev, "ASoC: Configure %d BE DAIs\n", count);
 return 0;
}
