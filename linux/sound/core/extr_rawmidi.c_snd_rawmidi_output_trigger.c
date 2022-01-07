
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* ops; int opened; } ;
struct TYPE_2__ {int (* trigger ) (struct snd_rawmidi_substream*,int) ;} ;


 int stub1 (struct snd_rawmidi_substream*,int) ;

__attribute__((used)) static inline void snd_rawmidi_output_trigger(struct snd_rawmidi_substream *substream, int up)
{
 if (!substream->opened)
  return;
 substream->ops->trigger(substream, up);
}
