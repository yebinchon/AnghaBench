
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_event {int dummy; } ;
struct seq_oss_midi {int use_lock; int port; int client; int coder; } ;
struct seq_oss_devinfo {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 struct seq_oss_midi* get_mididev (struct seq_oss_devinfo*,int) ;
 scalar_t__ snd_midi_event_encode_byte (int ,unsigned char,struct snd_seq_event*) ;
 int snd_seq_oss_fill_addr (struct seq_oss_devinfo*,struct snd_seq_event*,int ,int ) ;
 int snd_use_lock_free (int *) ;

int
snd_seq_oss_midi_putc(struct seq_oss_devinfo *dp, int dev, unsigned char c, struct snd_seq_event *ev)
{
 struct seq_oss_midi *mdev;

 if ((mdev = get_mididev(dp, dev)) == ((void*)0))
  return -ENODEV;
 if (snd_midi_event_encode_byte(mdev->coder, c, ev)) {
  snd_seq_oss_fill_addr(dp, ev, mdev->client, mdev->port);
  snd_use_lock_free(&mdev->use_lock);
  return 0;
 }
 snd_use_lock_free(&mdev->use_lock);
 return -EINVAL;
}
