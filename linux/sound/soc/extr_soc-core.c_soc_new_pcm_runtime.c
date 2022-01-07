
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int codec_dais; struct snd_soc_dai_link* dai_link; struct snd_soc_card* card; int component_list; } ;
struct snd_soc_dai_link {int num_codecs; int * ops; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_soc_card {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int kcalloc (int ,int,int ) ;
 int kfree (struct snd_soc_pcm_runtime*) ;
 struct snd_soc_pcm_runtime* kzalloc (int,int ) ;
 int null_snd_soc_ops ;

__attribute__((used)) static struct snd_soc_pcm_runtime *soc_new_pcm_runtime(
 struct snd_soc_card *card, struct snd_soc_dai_link *dai_link)
{
 struct snd_soc_pcm_runtime *rtd;

 rtd = kzalloc(sizeof(struct snd_soc_pcm_runtime), GFP_KERNEL);
 if (!rtd)
  return ((void*)0);

 INIT_LIST_HEAD(&rtd->component_list);
 rtd->card = card;
 rtd->dai_link = dai_link;
 if (!rtd->dai_link->ops)
  rtd->dai_link->ops = &null_snd_soc_ops;

 rtd->codec_dais = kcalloc(dai_link->num_codecs,
     sizeof(struct snd_soc_dai *),
     GFP_KERNEL);
 if (!rtd->codec_dais) {
  kfree(rtd);
  return ((void*)0);
 }

 return rtd;
}
