
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_virmidi {int output_work; int trigger; } ;
struct snd_rawmidi_substream {TYPE_1__* runtime; } ;
struct TYPE_2__ {struct snd_virmidi* private_data; } ;


 int WRITE_ONCE (int ,int) ;
 int queue_work (int ,int *) ;
 int system_highpri_wq ;

__attribute__((used)) static void snd_virmidi_output_trigger(struct snd_rawmidi_substream *substream, int up)
{
 struct snd_virmidi *vmidi = substream->runtime->private_data;

 WRITE_ONCE(vmidi->trigger, !!up);
 if (up)
  queue_work(system_highpri_wq, &vmidi->output_work);
}
