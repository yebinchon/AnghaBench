
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int name; int number; int stream; struct snd_pcm_str* pstr; struct snd_pcm* pcm; } ;
struct snd_pcm_str {scalar_t__ substream_opened; scalar_t__ substream_count; } ;
struct snd_pcm_info {int subname; scalar_t__ subdevices_avail; scalar_t__ subdevices_count; int dev_subclass; int dev_class; int name; int id; int subdevice; int stream; int device; int card; } ;
struct snd_pcm {int dev_subclass; int dev_class; int name; int id; int device; TYPE_1__* card; } ;
struct TYPE_2__ {int number; } ;


 int memset (struct snd_pcm_info*,int ,int) ;
 int strlcpy (int ,int ,int) ;

int snd_pcm_info(struct snd_pcm_substream *substream, struct snd_pcm_info *info)
{
 struct snd_pcm *pcm = substream->pcm;
 struct snd_pcm_str *pstr = substream->pstr;

 memset(info, 0, sizeof(*info));
 info->card = pcm->card->number;
 info->device = pcm->device;
 info->stream = substream->stream;
 info->subdevice = substream->number;
 strlcpy(info->id, pcm->id, sizeof(info->id));
 strlcpy(info->name, pcm->name, sizeof(info->name));
 info->dev_class = pcm->dev_class;
 info->dev_subclass = pcm->dev_subclass;
 info->subdevices_count = pstr->substream_count;
 info->subdevices_avail = pstr->substream_count - pstr->substream_opened;
 strlcpy(info->subname, substream->name, sizeof(info->subname));

 return 0;
}
