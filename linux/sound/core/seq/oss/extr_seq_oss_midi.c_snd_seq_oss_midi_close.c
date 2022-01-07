
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int subs ;
struct TYPE_2__ {int port; int client; } ;
struct snd_seq_port_subscribe {TYPE_1__ dest; TYPE_1__ sender; } ;
struct seq_oss_midi {int opened; int use_lock; struct seq_oss_devinfo* devinfo; int port; int client; } ;
struct seq_oss_devinfo {int cseq; TYPE_1__ addr; } ;


 int ENODEV ;
 int PERM_READ ;
 int PERM_WRITE ;
 int SNDRV_SEQ_IOCTL_UNSUBSCRIBE_PORT ;
 struct seq_oss_midi* get_mididev (struct seq_oss_devinfo*,int) ;
 int memset (struct snd_seq_port_subscribe*,int ,int) ;
 int snd_seq_kernel_client_ctl (int ,int ,struct snd_seq_port_subscribe*) ;
 int snd_use_lock_free (int *) ;

int
snd_seq_oss_midi_close(struct seq_oss_devinfo *dp, int dev)
{
 struct seq_oss_midi *mdev;
 struct snd_seq_port_subscribe subs;

 if ((mdev = get_mididev(dp, dev)) == ((void*)0))
  return -ENODEV;
 if (! mdev->opened || mdev->devinfo != dp) {
  snd_use_lock_free(&mdev->use_lock);
  return 0;
 }

 memset(&subs, 0, sizeof(subs));
 if (mdev->opened & PERM_WRITE) {
  subs.sender = dp->addr;
  subs.dest.client = mdev->client;
  subs.dest.port = mdev->port;
  snd_seq_kernel_client_ctl(dp->cseq, SNDRV_SEQ_IOCTL_UNSUBSCRIBE_PORT, &subs);
 }
 if (mdev->opened & PERM_READ) {
  subs.sender.client = mdev->client;
  subs.sender.port = mdev->port;
  subs.dest = dp->addr;
  snd_seq_kernel_client_ctl(dp->cseq, SNDRV_SEQ_IOCTL_UNSUBSCRIBE_PORT, &subs);
 }

 mdev->opened = 0;
 mdev->devinfo = ((void*)0);

 snd_use_lock_free(&mdev->use_lock);
 return 0;
}
