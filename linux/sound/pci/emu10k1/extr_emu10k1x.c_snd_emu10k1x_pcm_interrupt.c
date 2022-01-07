
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct emu10k1x_voice {struct emu10k1x_pcm* epcm; } ;
struct emu10k1x_pcm {TYPE_3__* substream; } ;
struct emu10k1x {TYPE_1__* card; } ;
struct TYPE_9__ {TYPE_2__* ops; } ;
struct TYPE_8__ {int (* pointer ) (TYPE_3__*) ;} ;
struct TYPE_7__ {int dev; } ;


 int dev_info (int ,char*,int ,int ,int ) ;
 int snd_pcm_lib_buffer_bytes (TYPE_3__*) ;
 int snd_pcm_lib_period_bytes (TYPE_3__*) ;
 int snd_pcm_period_elapsed (TYPE_3__*) ;
 int stub1 (TYPE_3__*) ;

__attribute__((used)) static void snd_emu10k1x_pcm_interrupt(struct emu10k1x *emu, struct emu10k1x_voice *voice)
{
 struct emu10k1x_pcm *epcm;

 if ((epcm = voice->epcm) == ((void*)0))
  return;
 if (epcm->substream == ((void*)0))
  return;







 snd_pcm_period_elapsed(epcm->substream);
}
