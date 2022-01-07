
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct soc_tplg {int dev; } ;
struct snd_soc_tplg_ctl_tlv {int type; int scale; } ;
struct snd_soc_tplg_ctl_hdr {struct snd_soc_tplg_ctl_tlv tlv; int access; } ;
struct snd_kcontrol_new {int dummy; } ;


 int EINVAL ;
 int SNDRV_CTL_ELEM_ACCESS_TLV_CALLBACK ;
 int SNDRV_CTL_ELEM_ACCESS_TLV_READWRITE ;

 int dev_dbg (int ,char*,int ) ;
 int le32_to_cpu (int ) ;
 int soc_tplg_create_tlv_db_scale (struct soc_tplg*,struct snd_kcontrol_new*,int *) ;

__attribute__((used)) static int soc_tplg_create_tlv(struct soc_tplg *tplg,
 struct snd_kcontrol_new *kc, struct snd_soc_tplg_ctl_hdr *tc)
{
 struct snd_soc_tplg_ctl_tlv *tplg_tlv;
 u32 access = le32_to_cpu(tc->access);

 if (!(access & SNDRV_CTL_ELEM_ACCESS_TLV_READWRITE))
  return 0;

 if (!(access & SNDRV_CTL_ELEM_ACCESS_TLV_CALLBACK)) {
  tplg_tlv = &tc->tlv;
  switch (le32_to_cpu(tplg_tlv->type)) {
  case 128:
   return soc_tplg_create_tlv_db_scale(tplg, kc,
     &tplg_tlv->scale);


  default:
   dev_dbg(tplg->dev, "Unsupported TLV type %d\n",
     tplg_tlv->type);
   return -EINVAL;
  }
 }

 return 0;
}
