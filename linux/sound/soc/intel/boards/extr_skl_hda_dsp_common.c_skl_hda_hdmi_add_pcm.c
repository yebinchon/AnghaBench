
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_card {int dev; } ;
struct skl_hda_private {int dai_index; int hdmi_pcm_list; } ;
struct skl_hda_hdmi_pcm {int device; int head; int codec_dai; } ;
typedef int dai_name ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NAME_SIZE ;
 struct skl_hda_hdmi_pcm* devm_kzalloc (int ,int,int ) ;
 int list_add_tail (int *,int *) ;
 int snd_soc_card_get_codec_dai (struct snd_soc_card*,char*) ;
 struct skl_hda_private* snd_soc_card_get_drvdata (struct snd_soc_card*) ;
 int snprintf (char*,int,char*,int) ;

int skl_hda_hdmi_add_pcm(struct snd_soc_card *card, int device)
{
 struct skl_hda_private *ctx = snd_soc_card_get_drvdata(card);
 struct skl_hda_hdmi_pcm *pcm;
 char dai_name[NAME_SIZE];

 pcm = devm_kzalloc(card->dev, sizeof(*pcm), GFP_KERNEL);
 if (!pcm)
  return -ENOMEM;

 snprintf(dai_name, sizeof(dai_name), "intel-hdmi-hifi%d",
   ctx->dai_index);
 pcm->codec_dai = snd_soc_card_get_codec_dai(card, dai_name);
 if (!pcm->codec_dai)
  return -EINVAL;

 pcm->device = device;
 list_add_tail(&pcm->head, &ctx->hdmi_pcm_list);

 return 0;
}
