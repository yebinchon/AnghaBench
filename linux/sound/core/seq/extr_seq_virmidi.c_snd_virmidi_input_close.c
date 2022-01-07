
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_virmidi_dev {int filelist_sem; int filelist_lock; } ;
struct snd_virmidi {int parser; int list; } ;
struct snd_rawmidi_substream {TYPE_2__* runtime; TYPE_1__* rmidi; } ;
struct TYPE_4__ {struct snd_virmidi* private_data; } ;
struct TYPE_3__ {struct snd_virmidi_dev* private_data; } ;


 int down_write (int *) ;
 int kfree (struct snd_virmidi*) ;
 int list_del (int *) ;
 int snd_midi_event_free (int ) ;
 int up_write (int *) ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;

__attribute__((used)) static int snd_virmidi_input_close(struct snd_rawmidi_substream *substream)
{
 struct snd_virmidi_dev *rdev = substream->rmidi->private_data;
 struct snd_virmidi *vmidi = substream->runtime->private_data;

 down_write(&rdev->filelist_sem);
 write_lock_irq(&rdev->filelist_lock);
 list_del(&vmidi->list);
 write_unlock_irq(&rdev->filelist_lock);
 up_write(&rdev->filelist_sem);
 snd_midi_event_free(vmidi->parser);
 substream->runtime->private_data = ((void*)0);
 kfree(vmidi);
 return 0;
}
