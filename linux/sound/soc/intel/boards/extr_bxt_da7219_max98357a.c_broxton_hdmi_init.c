
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_1__* card; struct snd_soc_dai* codec_dai; } ;
struct snd_soc_dai {scalar_t__ id; } ;
struct bxt_hdmi_pcm {int head; struct snd_soc_dai* codec_dai; scalar_t__ device; } ;
struct bxt_card_private {int hdmi_pcm_list; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ BXT_DPCM_AUDIO_HDMI1_PB ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct bxt_hdmi_pcm* devm_kzalloc (int ,int,int ) ;
 int list_add_tail (int *,int *) ;
 struct bxt_card_private* snd_soc_card_get_drvdata (TYPE_1__*) ;

__attribute__((used)) static int broxton_hdmi_init(struct snd_soc_pcm_runtime *rtd)
{
 struct bxt_card_private *ctx = snd_soc_card_get_drvdata(rtd->card);
 struct snd_soc_dai *dai = rtd->codec_dai;
 struct bxt_hdmi_pcm *pcm;

 pcm = devm_kzalloc(rtd->card->dev, sizeof(*pcm), GFP_KERNEL);
 if (!pcm)
  return -ENOMEM;

 pcm->device = BXT_DPCM_AUDIO_HDMI1_PB + dai->id;
 pcm->codec_dai = dai;

 list_add_tail(&pcm->head, &ctx->hdmi_pcm_list);

 return 0;
}
