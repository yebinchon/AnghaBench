
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_addr {int port; int client; } ;
struct seq_oss_midi {int use_lock; int port; int client; } ;
struct seq_oss_devinfo {int dummy; } ;


 struct seq_oss_midi* get_mididev (struct seq_oss_devinfo*,int) ;
 int snd_use_lock_free (int *) ;

void
snd_seq_oss_midi_get_addr(struct seq_oss_devinfo *dp, int dev, struct snd_seq_addr *addr)
{
 struct seq_oss_midi *mdev;

 if ((mdev = get_mididev(dp, dev)) == ((void*)0))
  return;
 addr->client = mdev->client;
 addr->port = mdev->port;
 snd_use_lock_free(&mdev->use_lock);
}
