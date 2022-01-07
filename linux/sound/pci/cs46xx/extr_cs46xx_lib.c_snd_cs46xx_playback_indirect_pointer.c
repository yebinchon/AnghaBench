
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_2__* runtime; } ;
struct TYPE_5__ {scalar_t__ addr; } ;
struct snd_cs46xx_pcm {int pcm_rec; TYPE_1__ hw_buf; TYPE_4__* pcm_channel; } ;
struct snd_cs46xx {int dummy; } ;
typedef int snd_pcm_uframes_t ;
struct TYPE_8__ {TYPE_3__* pcm_reader_scb; } ;
struct TYPE_7__ {int address; } ;
struct TYPE_6__ {struct snd_cs46xx_pcm* private_data; } ;


 int BA1_PBA ;
 int ENXIO ;
 scalar_t__ snd_BUG_ON (int) ;
 size_t snd_cs46xx_peek (struct snd_cs46xx*,int) ;
 int snd_pcm_indirect_playback_pointer (struct snd_pcm_substream*,int *,size_t) ;
 struct snd_cs46xx* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_uframes_t snd_cs46xx_playback_indirect_pointer(struct snd_pcm_substream *substream)
{
 struct snd_cs46xx *chip = snd_pcm_substream_chip(substream);
 size_t ptr;
 struct snd_cs46xx_pcm *cpcm = substream->runtime->private_data;






 ptr = snd_cs46xx_peek(chip, BA1_PBA);

 ptr -= cpcm->hw_buf.addr;
 return snd_pcm_indirect_playback_pointer(substream, &cpcm->pcm_rec, ptr);
}
