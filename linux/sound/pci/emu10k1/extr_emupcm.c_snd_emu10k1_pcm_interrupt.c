
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct snd_emu10k1_voice {struct snd_emu10k1_pcm* epcm; } ;
struct snd_emu10k1_pcm {TYPE_4__* substream; } ;
struct snd_emu10k1 {TYPE_1__* card; } ;
struct TYPE_11__ {TYPE_3__* runtime; } ;
struct TYPE_10__ {TYPE_2__* hw; } ;
struct TYPE_9__ {int (* pointer ) (struct snd_emu10k1*,TYPE_4__*) ;} ;
struct TYPE_8__ {int dev; } ;


 int dev_dbg (int ,char*,int ,int ,int ) ;
 int snd_pcm_lib_buffer_bytes (TYPE_4__*) ;
 int snd_pcm_lib_period_bytes (TYPE_4__*) ;
 int snd_pcm_period_elapsed (TYPE_4__*) ;
 int stub1 (struct snd_emu10k1*,TYPE_4__*) ;

__attribute__((used)) static void snd_emu10k1_pcm_interrupt(struct snd_emu10k1 *emu,
          struct snd_emu10k1_voice *voice)
{
 struct snd_emu10k1_pcm *epcm;

 if ((epcm = voice->epcm) == ((void*)0))
  return;
 if (epcm->substream == ((void*)0))
  return;







 snd_pcm_period_elapsed(epcm->substream);
}
