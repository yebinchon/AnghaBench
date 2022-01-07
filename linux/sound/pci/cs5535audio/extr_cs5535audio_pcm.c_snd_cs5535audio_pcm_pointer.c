
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct snd_pcm_substream {TYPE_3__* runtime; } ;
struct cs5535audio_dma {scalar_t__ buf_addr; scalar_t__ buf_bytes; TYPE_1__* ops; } ;
struct cs5535audio {TYPE_2__* card; } ;
typedef int snd_pcm_uframes_t ;
struct TYPE_6__ {struct cs5535audio_dma* private_data; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {scalar_t__ (* read_dma_pntr ) (struct cs5535audio*) ;} ;


 int bytes_to_frames (TYPE_3__*,scalar_t__) ;
 int dev_err (int ,char*,scalar_t__,scalar_t__) ;
 struct cs5535audio* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 scalar_t__ stub1 (struct cs5535audio*) ;

__attribute__((used)) static snd_pcm_uframes_t snd_cs5535audio_pcm_pointer(struct snd_pcm_substream
       *substream)
{
 struct cs5535audio *cs5535au = snd_pcm_substream_chip(substream);
 u32 curdma;
 struct cs5535audio_dma *dma;

 dma = substream->runtime->private_data;
 curdma = dma->ops->read_dma_pntr(cs5535au);
 if (curdma < dma->buf_addr) {
  dev_err(cs5535au->card->dev, "curdma=%x < %x bufaddr.\n",
     curdma, dma->buf_addr);
  return 0;
 }
 curdma -= dma->buf_addr;
 if (curdma >= dma->buf_bytes) {
  dev_err(cs5535au->card->dev, "diff=%x >= %x buf_bytes.\n",
     curdma, dma->buf_bytes);
  return 0;
 }
 return bytes_to_frames(substream->runtime, curdma);
}
