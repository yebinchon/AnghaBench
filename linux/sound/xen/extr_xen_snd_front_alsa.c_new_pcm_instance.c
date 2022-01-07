
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct xen_snd_front_pcm_stream_info {int dummy; } ;
struct xen_snd_front_pcm_instance_info {int num_pcm_streams_pb; int num_pcm_streams_cap; struct snd_pcm* pcm; TYPE_5__* streams_cap; TYPE_3__* streams_pb; int pcm_hw; struct xen_snd_front_card_info* card_info; } ;
struct xen_snd_front_card_info {TYPE_7__* card; TYPE_2__* front_info; } ;
struct xen_front_cfg_pcm_instance {int num_streams_pb; int num_streams_cap; int device_id; int name; TYPE_6__* streams_cap; TYPE_4__* streams_pb; int pcm_hw; } ;
struct snd_pcm {int nonatomic; int name; scalar_t__ info_flags; struct xen_snd_front_pcm_instance_info* private_data; } ;
struct TYPE_14__ {int card_dev; } ;
struct TYPE_13__ {int index; int pcm_hw; } ;
struct TYPE_12__ {int index; int pcm_hw; } ;
struct TYPE_11__ {int index; int pcm_hw; } ;
struct TYPE_10__ {int index; int pcm_hw; } ;
struct TYPE_9__ {TYPE_1__* xb_dev; } ;
struct TYPE_8__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int dev_dbg (int *,char*,int ,int ,int,int) ;
 void* devm_kcalloc (int *,int,int,int ) ;
 int snd_drv_alsa_capture_ops ;
 int snd_drv_alsa_playback_ops ;
 int snd_pcm_new (TYPE_7__*,int ,int ,int,int,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int ,int *) ;
 int strncpy (int ,char*,int) ;

__attribute__((used)) static int new_pcm_instance(struct xen_snd_front_card_info *card_info,
       struct xen_front_cfg_pcm_instance *instance_cfg,
       struct xen_snd_front_pcm_instance_info *pcm_instance_info)
{
 struct snd_pcm *pcm;
 int ret, i;

 dev_dbg(&card_info->front_info->xb_dev->dev,
  "New PCM device \"%s\" with id %d playback %d capture %d",
  instance_cfg->name,
  instance_cfg->device_id,
  instance_cfg->num_streams_pb,
  instance_cfg->num_streams_cap);

 pcm_instance_info->card_info = card_info;

 pcm_instance_info->pcm_hw = instance_cfg->pcm_hw;

 if (instance_cfg->num_streams_pb) {
  pcm_instance_info->streams_pb =
    devm_kcalloc(&card_info->card->card_dev,
          instance_cfg->num_streams_pb,
          sizeof(struct xen_snd_front_pcm_stream_info),
          GFP_KERNEL);
  if (!pcm_instance_info->streams_pb)
   return -ENOMEM;
 }

 if (instance_cfg->num_streams_cap) {
  pcm_instance_info->streams_cap =
    devm_kcalloc(&card_info->card->card_dev,
          instance_cfg->num_streams_cap,
          sizeof(struct xen_snd_front_pcm_stream_info),
          GFP_KERNEL);
  if (!pcm_instance_info->streams_cap)
   return -ENOMEM;
 }

 pcm_instance_info->num_pcm_streams_pb =
   instance_cfg->num_streams_pb;
 pcm_instance_info->num_pcm_streams_cap =
   instance_cfg->num_streams_cap;

 for (i = 0; i < pcm_instance_info->num_pcm_streams_pb; i++) {
  pcm_instance_info->streams_pb[i].pcm_hw =
   instance_cfg->streams_pb[i].pcm_hw;
  pcm_instance_info->streams_pb[i].index =
   instance_cfg->streams_pb[i].index;
 }

 for (i = 0; i < pcm_instance_info->num_pcm_streams_cap; i++) {
  pcm_instance_info->streams_cap[i].pcm_hw =
   instance_cfg->streams_cap[i].pcm_hw;
  pcm_instance_info->streams_cap[i].index =
   instance_cfg->streams_cap[i].index;
 }

 ret = snd_pcm_new(card_info->card, instance_cfg->name,
     instance_cfg->device_id,
     instance_cfg->num_streams_pb,
     instance_cfg->num_streams_cap,
     &pcm);
 if (ret < 0)
  return ret;

 pcm->private_data = pcm_instance_info;
 pcm->info_flags = 0;

 pcm->nonatomic = 1;
 strncpy(pcm->name, "Virtual card PCM", sizeof(pcm->name));

 if (instance_cfg->num_streams_pb)
  snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK,
    &snd_drv_alsa_playback_ops);

 if (instance_cfg->num_streams_cap)
  snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE,
    &snd_drv_alsa_capture_ops);

 pcm_instance_info->pcm = pcm;
 return 0;
}
