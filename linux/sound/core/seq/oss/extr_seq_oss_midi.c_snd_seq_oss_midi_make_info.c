
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_oss_midi {int use_lock; int name; } ;
struct seq_oss_devinfo {int dummy; } ;
struct midi_info {int device; int name; scalar_t__ capabilities; scalar_t__ dev_type; } ;


 int ENXIO ;
 struct seq_oss_midi* get_mididev (struct seq_oss_devinfo*,int) ;
 int snd_use_lock_free (int *) ;
 int strlcpy (int ,int ,int) ;

int
snd_seq_oss_midi_make_info(struct seq_oss_devinfo *dp, int dev, struct midi_info *inf)
{
 struct seq_oss_midi *mdev;

 if ((mdev = get_mididev(dp, dev)) == ((void*)0))
  return -ENXIO;
 inf->device = dev;
 inf->dev_type = 0;
 inf->capabilities = 0;
 strlcpy(inf->name, mdev->name, sizeof(inf->name));
 snd_use_lock_free(&mdev->use_lock);
 return 0;
}
