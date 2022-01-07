
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* pcm; TYPE_3__* runtime; } ;
struct snd_azf3328_codec_data {int name; scalar_t__ dma_base; } ;
typedef int snd_pcm_uframes_t ;
struct TYPE_6__ {struct snd_azf3328_codec_data* private_data; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {TYPE_2__* card; } ;


 int IDX_IO_CODEC_DMA_CURRPOS ;
 int IDX_IO_CODEC_DMA_START_1 ;
 int bytes_to_frames (TYPE_3__*,unsigned long) ;
 int dev_dbg (int ,char*,int ,int ,unsigned long,int ) ;
 int jiffies ;
 unsigned long snd_azf3328_codec_inl (struct snd_azf3328_codec_data const*,int ) ;

__attribute__((used)) static snd_pcm_uframes_t
snd_azf3328_pcm_pointer(struct snd_pcm_substream *substream
)
{
 const struct snd_azf3328_codec_data *codec =
  substream->runtime->private_data;
 unsigned long result;
 snd_pcm_uframes_t frmres;

 result = snd_azf3328_codec_inl(codec, IDX_IO_CODEC_DMA_CURRPOS);





 result -= codec->dma_base;

 frmres = bytes_to_frames( substream->runtime, result);
 dev_dbg(substream->pcm->card->dev, "%08li %s @ 0x%8lx, frames %8ld\n",
  jiffies, codec->name, result, frmres);
 return frmres;
}
