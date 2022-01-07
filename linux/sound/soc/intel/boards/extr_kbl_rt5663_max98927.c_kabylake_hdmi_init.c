
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_1__* card; struct snd_soc_dai* codec_dai; } ;
struct snd_soc_dai {int dummy; } ;
struct kbl_rt5663_private {int hdmi_pcm_list; } ;
struct kbl_hdmi_pcm {int device; int head; struct snd_soc_dai* codec_dai; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct kbl_hdmi_pcm* devm_kzalloc (int ,int,int ) ;
 int list_add_tail (int *,int *) ;
 struct kbl_rt5663_private* snd_soc_card_get_drvdata (TYPE_1__*) ;

__attribute__((used)) static int kabylake_hdmi_init(struct snd_soc_pcm_runtime *rtd, int device)
{
 struct kbl_rt5663_private *ctx = snd_soc_card_get_drvdata(rtd->card);
 struct snd_soc_dai *dai = rtd->codec_dai;
 struct kbl_hdmi_pcm *pcm;

 pcm = devm_kzalloc(rtd->card->dev, sizeof(*pcm), GFP_KERNEL);
 if (!pcm)
  return -ENOMEM;

 pcm->device = device;
 pcm->codec_dai = dai;

 list_add_tail(&pcm->head, &ctx->hdmi_pcm_list);

 return 0;
}
