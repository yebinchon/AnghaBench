
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int subs ;
struct TYPE_2__ {int port; int client; } ;
struct snd_seq_port_subscribe {int queue; int flags; TYPE_1__ dest; TYPE_1__ sender; } ;
struct seq_oss_midi {int opened; int flags; int use_lock; struct seq_oss_devinfo* devinfo; int port; int client; } ;
struct seq_oss_devinfo {int cseq; int queue; TYPE_1__ addr; } ;


 int EBUSY ;
 int ENODEV ;
 int ENXIO ;
 int PERM_READ ;
 int PERM_WRITE ;
 int SNDRV_SEQ_IOCTL_SUBSCRIBE_PORT ;
 int SNDRV_SEQ_PORT_SUBS_TIMESTAMP ;
 struct seq_oss_midi* get_mididev (struct seq_oss_devinfo*,int) ;
 scalar_t__ is_read_mode (int) ;
 scalar_t__ is_write_mode (int) ;
 int memset (struct snd_seq_port_subscribe*,int ,int) ;
 scalar_t__ snd_seq_kernel_client_ctl (int ,int ,struct snd_seq_port_subscribe*) ;
 int snd_use_lock_free (int *) ;

int
snd_seq_oss_midi_open(struct seq_oss_devinfo *dp, int dev, int fmode)
{
 int perm;
 struct seq_oss_midi *mdev;
 struct snd_seq_port_subscribe subs;

 if ((mdev = get_mididev(dp, dev)) == ((void*)0))
  return -ENODEV;


 if (mdev->opened && mdev->devinfo != dp) {
  snd_use_lock_free(&mdev->use_lock);
  return -EBUSY;
 }

 perm = 0;
 if (is_write_mode(fmode))
  perm |= PERM_WRITE;
 if (is_read_mode(fmode))
  perm |= PERM_READ;
 perm &= mdev->flags;
 if (perm == 0) {
  snd_use_lock_free(&mdev->use_lock);
  return -ENXIO;
 }


 if ((mdev->opened & perm) == perm) {
  snd_use_lock_free(&mdev->use_lock);
  return 0;
 }

 perm &= ~mdev->opened;

 memset(&subs, 0, sizeof(subs));

 if (perm & PERM_WRITE) {
  subs.sender = dp->addr;
  subs.dest.client = mdev->client;
  subs.dest.port = mdev->port;
  if (snd_seq_kernel_client_ctl(dp->cseq, SNDRV_SEQ_IOCTL_SUBSCRIBE_PORT, &subs) >= 0)
   mdev->opened |= PERM_WRITE;
 }
 if (perm & PERM_READ) {
  subs.sender.client = mdev->client;
  subs.sender.port = mdev->port;
  subs.dest = dp->addr;
  subs.flags = SNDRV_SEQ_PORT_SUBS_TIMESTAMP;
  subs.queue = dp->queue;
  if (snd_seq_kernel_client_ctl(dp->cseq, SNDRV_SEQ_IOCTL_SUBSCRIBE_PORT, &subs) >= 0)
   mdev->opened |= PERM_READ;
 }

 if (! mdev->opened) {
  snd_use_lock_free(&mdev->use_lock);
  return -ENXIO;
 }

 mdev->devinfo = dp;
 snd_use_lock_free(&mdev->use_lock);
 return 0;
}
