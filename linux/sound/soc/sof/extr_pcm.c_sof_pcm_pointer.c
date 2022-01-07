
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int pcm_id; } ;
struct snd_sof_pcm {TYPE_4__ pcm; TYPE_3__* stream; } ;
struct snd_sof_dev {int dev; } ;
struct snd_soc_pcm_runtime {TYPE_1__* dai_link; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {size_t stream; int runtime; struct snd_soc_pcm_runtime* private_data; } ;
typedef int snd_pcm_uframes_t ;
struct TYPE_10__ {int (* pcm_pointer ) (struct snd_sof_dev*,struct snd_pcm_substream*) ;} ;
struct TYPE_7__ {int dai_posn; int host_posn; } ;
struct TYPE_8__ {TYPE_2__ posn; } ;
struct TYPE_6__ {scalar_t__ no_pcm; } ;


 int DRV_NAME ;
 int EINVAL ;
 int bytes_to_frames (int ,int ) ;
 int dev_dbg (int ,char*,int ,size_t,int ,int ) ;
 struct snd_sof_dev* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_rtdcom_lookup (struct snd_soc_pcm_runtime*,int ) ;
 struct snd_sof_pcm* snd_sof_find_spcm_dai (struct snd_sof_dev*,struct snd_soc_pcm_runtime*) ;
 TYPE_5__* sof_ops (struct snd_sof_dev*) ;
 int stub1 (struct snd_sof_dev*,struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_uframes_t sof_pcm_pointer(struct snd_pcm_substream *substream)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_component *component =
  snd_soc_rtdcom_lookup(rtd, DRV_NAME);
 struct snd_sof_dev *sdev = snd_soc_component_get_drvdata(component);
 struct snd_sof_pcm *spcm;
 snd_pcm_uframes_t host, dai;


 if (rtd->dai_link->no_pcm)
  return 0;


 if (sof_ops(sdev)->pcm_pointer)
  return sof_ops(sdev)->pcm_pointer(sdev, substream);

 spcm = snd_sof_find_spcm_dai(sdev, rtd);
 if (!spcm)
  return -EINVAL;


 host = bytes_to_frames(substream->runtime,
          spcm->stream[substream->stream].posn.host_posn);
 dai = bytes_to_frames(substream->runtime,
         spcm->stream[substream->stream].posn.dai_posn);

 dev_dbg(sdev->dev, "PCM: stream %d dir %d DMA position %lu DAI position %lu\n",
  spcm->pcm.pcm_id, substream->stream, host, dai);

 return host;
}
