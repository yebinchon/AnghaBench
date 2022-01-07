
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_soc_dai {TYPE_2__* dev; } ;
struct TYPE_6__ {int data; TYPE_1__* ops; } ;
struct hdmi_codec_priv {TYPE_3__ hcd; } ;
struct TYPE_5__ {int parent; } ;
struct TYPE_4__ {int (* digital_mute ) (int ,int ,int) ;} ;


 struct hdmi_codec_priv* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int stub1 (int ,int ,int) ;

__attribute__((used)) static int hdmi_codec_digital_mute(struct snd_soc_dai *dai, int mute)
{
 struct hdmi_codec_priv *hcp = snd_soc_dai_get_drvdata(dai);

 if (hcp->hcd.ops->digital_mute)
  return hcp->hcd.ops->digital_mute(dai->dev->parent,
        hcp->hcd.data, mute);

 return 0;
}
