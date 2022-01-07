
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_tplg {int req_index; int index; scalar_t__ hdr_pos; scalar_t__ pos; } ;
struct snd_soc_tplg_hdr {int type; int index; } ;


 scalar_t__ SND_SOC_TPLG_INDEX_ALL ;
 int le32_to_cpu (int ) ;
 int soc_tplg_dai_elems_load (struct soc_tplg*,struct snd_soc_tplg_hdr*) ;
 int soc_tplg_dapm_graph_elems_load (struct soc_tplg*,struct snd_soc_tplg_hdr*) ;
 int soc_tplg_dapm_widget_elems_load (struct soc_tplg*,struct snd_soc_tplg_hdr*) ;
 int soc_tplg_kcontrol_elems_load (struct soc_tplg*,struct snd_soc_tplg_hdr*) ;
 int soc_tplg_link_elems_load (struct soc_tplg*,struct snd_soc_tplg_hdr*) ;
 int soc_tplg_manifest_load (struct soc_tplg*,struct snd_soc_tplg_hdr*) ;
 int soc_tplg_pcm_elems_load (struct soc_tplg*,struct snd_soc_tplg_hdr*) ;
 int soc_tplg_vendor_load (struct soc_tplg*,struct snd_soc_tplg_hdr*) ;

__attribute__((used)) static int soc_tplg_load_header(struct soc_tplg *tplg,
 struct snd_soc_tplg_hdr *hdr)
{
 tplg->pos = tplg->hdr_pos + sizeof(struct snd_soc_tplg_hdr);


 if (le32_to_cpu(hdr->index) != tplg->req_index &&
  tplg->req_index != SND_SOC_TPLG_INDEX_ALL)
  return 0;

 tplg->index = le32_to_cpu(hdr->index);

 switch (le32_to_cpu(hdr->type)) {
 case 129:
 case 131:
 case 136:
  return soc_tplg_kcontrol_elems_load(tplg, hdr);
 case 133:
  return soc_tplg_dapm_graph_elems_load(tplg, hdr);
 case 132:
  return soc_tplg_dapm_widget_elems_load(tplg, hdr);
 case 128:
  return soc_tplg_pcm_elems_load(tplg, hdr);
 case 135:
  return soc_tplg_dai_elems_load(tplg, hdr);
 case 134:
 case 137:

  return soc_tplg_link_elems_load(tplg, hdr);
 case 130:
  return soc_tplg_manifest_load(tplg, hdr);
 default:

  return soc_tplg_vendor_load(tplg, hdr);
 }

 return 0;
}
