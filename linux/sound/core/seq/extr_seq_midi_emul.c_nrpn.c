
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_midi_op {int (* nrpn ) (void*,struct snd_midi_channel*,struct snd_midi_channel_set*) ;} ;
struct snd_midi_channel_set {int dummy; } ;
struct snd_midi_channel {int dummy; } ;


 int stub1 (void*,struct snd_midi_channel*,struct snd_midi_channel_set*) ;

__attribute__((used)) static void
nrpn(struct snd_midi_op *ops, void *drv, struct snd_midi_channel *chan,
     struct snd_midi_channel_set *chset)
{

 if (ops->nrpn)
  ops->nrpn(drv, chan, chset);
}
