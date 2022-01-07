
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct soc_tplg {int dummy; } ;
struct snd_soc_tplg_tlv_dbscale {int mute; int step; int min; } ;
struct TYPE_2__ {void* p; } ;
struct snd_kcontrol_new {TYPE_1__ tlv; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned int SNDRV_CTL_TLVT_DB_SCALE ;
 int TLV_DB_SCALE_MASK ;
 int TLV_DB_SCALE_MUTE ;
 unsigned int* kzalloc (unsigned int,int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int soc_tplg_create_tlv_db_scale(struct soc_tplg *tplg,
 struct snd_kcontrol_new *kc, struct snd_soc_tplg_tlv_dbscale *scale)
{
 unsigned int item_len = 2 * sizeof(unsigned int);
 unsigned int *p;

 p = kzalloc(item_len + 2 * sizeof(unsigned int), GFP_KERNEL);
 if (!p)
  return -ENOMEM;

 p[0] = SNDRV_CTL_TLVT_DB_SCALE;
 p[1] = item_len;
 p[2] = le32_to_cpu(scale->min);
 p[3] = (le32_to_cpu(scale->step) & TLV_DB_SCALE_MASK)
  | (le32_to_cpu(scale->mute) ? TLV_DB_SCALE_MUTE : 0);

 kc->tlv.p = (void *)p;
 return 0;
}
