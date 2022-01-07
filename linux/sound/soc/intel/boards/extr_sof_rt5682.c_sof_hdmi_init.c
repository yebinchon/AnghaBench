
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sof_hdmi_pcm {int head; struct snd_soc_dai* codec_dai; int device; } ;
struct sof_card_private {int hdmi_pcm_list; } ;
struct snd_soc_pcm_runtime {TYPE_1__* dai_link; TYPE_2__* card; struct snd_soc_dai* codec_dai; } ;
struct snd_soc_dai {int dummy; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int id; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct sof_hdmi_pcm* devm_kzalloc (int ,int,int ) ;
 int list_add_tail (int *,int *) ;
 struct sof_card_private* snd_soc_card_get_drvdata (TYPE_2__*) ;

__attribute__((used)) static int sof_hdmi_init(struct snd_soc_pcm_runtime *rtd)
{
 struct sof_card_private *ctx = snd_soc_card_get_drvdata(rtd->card);
 struct snd_soc_dai *dai = rtd->codec_dai;
 struct sof_hdmi_pcm *pcm;

 pcm = devm_kzalloc(rtd->card->dev, sizeof(*pcm), GFP_KERNEL);
 if (!pcm)
  return -ENOMEM;


 pcm->device = rtd->dai_link->id;
 pcm->codec_dai = dai;

 list_add_tail(&pcm->head, &ctx->hdmi_pcm_list);

 return 0;
}
