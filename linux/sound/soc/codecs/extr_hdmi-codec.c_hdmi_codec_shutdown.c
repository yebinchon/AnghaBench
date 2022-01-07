
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_soc_dai {TYPE_2__* dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct TYPE_6__ {int data; TYPE_1__* ops; } ;
struct hdmi_codec_priv {int busy; TYPE_3__ hcd; int chmap_idx; } ;
struct TYPE_5__ {int parent; } ;
struct TYPE_4__ {int (* audio_shutdown ) (int ,int ) ;} ;


 int HDMI_CODEC_CHMAP_IDX_UNKNOWN ;
 int clear_bit (int ,int *) ;
 struct hdmi_codec_priv* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void hdmi_codec_shutdown(struct snd_pcm_substream *substream,
    struct snd_soc_dai *dai)
{
 struct hdmi_codec_priv *hcp = snd_soc_dai_get_drvdata(dai);

 hcp->chmap_idx = HDMI_CODEC_CHMAP_IDX_UNKNOWN;
 hcp->hcd.ops->audio_shutdown(dai->dev->parent, hcp->hcd.data);

 clear_bit(0, &hcp->busy);
}
