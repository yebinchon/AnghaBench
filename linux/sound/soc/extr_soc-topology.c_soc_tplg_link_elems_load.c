
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct soc_tplg {scalar_t__ pass; scalar_t__ pos; int dev; } ;
struct snd_soc_tplg_link_config_v4 {int dummy; } ;
struct TYPE_2__ {int size; } ;
struct snd_soc_tplg_link_config {TYPE_1__ priv; int size; } ;
struct snd_soc_tplg_hdr {int payload_size; int size; int count; } ;


 int EINVAL ;
 scalar_t__ SOC_TPLG_PASS_LINK ;
 int dev_err (int ,char*,int) ;
 int kfree (struct snd_soc_tplg_link_config*) ;
 int le32_to_cpu (int ) ;
 int link_new_ver (struct soc_tplg*,struct snd_soc_tplg_link_config*,struct snd_soc_tplg_link_config**) ;
 scalar_t__ soc_tplg_check_elem_count (struct soc_tplg*,int,int,int,char*) ;
 int soc_tplg_link_config (struct soc_tplg*,struct snd_soc_tplg_link_config*) ;

__attribute__((used)) static int soc_tplg_link_elems_load(struct soc_tplg *tplg,
 struct snd_soc_tplg_hdr *hdr)
{
 struct snd_soc_tplg_link_config *link, *_link;
 int count;
 int size;
 int i, ret;
 bool abi_match;

 count = le32_to_cpu(hdr->count);

 if (tplg->pass != SOC_TPLG_PASS_LINK) {
  tplg->pos += le32_to_cpu(hdr->size) +
   le32_to_cpu(hdr->payload_size);
  return 0;
 };


 link = (struct snd_soc_tplg_link_config *)tplg->pos;
 size = le32_to_cpu(link->size);
 if (size > sizeof(struct snd_soc_tplg_link_config)
  || size < sizeof(struct snd_soc_tplg_link_config_v4)) {
  dev_err(tplg->dev, "ASoC: invalid size %d for physical link elems\n",
   size);
  return -EINVAL;
 }

 if (soc_tplg_check_elem_count(tplg,
          size, count,
          le32_to_cpu(hdr->payload_size),
          "physical link config")) {
  dev_err(tplg->dev, "ASoC: invalid count %d for physical link elems\n",
   count);
  return -EINVAL;
 }


 for (i = 0; i < count; i++) {
  link = (struct snd_soc_tplg_link_config *)tplg->pos;
  size = le32_to_cpu(link->size);
  if (size == sizeof(*link)) {
   abi_match = 1;
   _link = link;
  } else {
   abi_match = 0;
   ret = link_new_ver(tplg, link, &_link);
   if (ret < 0)
    return ret;
  }

  ret = soc_tplg_link_config(tplg, _link);
  if (ret < 0)
   return ret;




  tplg->pos += size + le32_to_cpu(_link->priv.size);

  if (!abi_match)
   kfree(_link);
 }

 return 0;
}
