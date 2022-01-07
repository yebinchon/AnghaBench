
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int port; int client; } ;
struct snd_seq_event {TYPE_1__ source; } ;
struct seq_oss_midi {int opened; int use_lock; int seq_device; } ;
struct seq_oss_devinfo {scalar_t__ seq_mode; int * readq; } ;


 int PERM_READ ;
 scalar_t__ SNDRV_SEQ_OSS_MODE_MUSIC ;
 struct seq_oss_midi* find_slot (int ,int ) ;
 int send_midi_event (struct seq_oss_devinfo*,struct snd_seq_event*,struct seq_oss_midi*) ;
 int send_synth_event (struct seq_oss_devinfo*,struct snd_seq_event*,int ) ;
 int snd_use_lock_free (int *) ;

int
snd_seq_oss_midi_input(struct snd_seq_event *ev, int direct, void *private_data)
{
 struct seq_oss_devinfo *dp = (struct seq_oss_devinfo *)private_data;
 struct seq_oss_midi *mdev;
 int rc;

 if (dp->readq == ((void*)0))
  return 0;
 if ((mdev = find_slot(ev->source.client, ev->source.port)) == ((void*)0))
  return 0;
 if (! (mdev->opened & PERM_READ)) {
  snd_use_lock_free(&mdev->use_lock);
  return 0;
 }

 if (dp->seq_mode == SNDRV_SEQ_OSS_MODE_MUSIC)
  rc = send_synth_event(dp, ev, mdev->seq_device);
 else
  rc = send_midi_event(dp, ev, mdev);

 snd_use_lock_free(&mdev->use_lock);
 return rc;
}
