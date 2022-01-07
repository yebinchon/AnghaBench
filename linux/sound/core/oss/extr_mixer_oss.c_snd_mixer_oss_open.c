
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mixer_oss_file {int * mixer; struct snd_card* card; } ;
struct snd_card {int module; int * mixer_oss; } ;
struct inode {int dummy; } ;
struct file {struct snd_mixer_oss_file* private_data; } ;


 int EFAULT ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SNDRV_OSS_DEVICE_TYPE_MIXER ;
 int iminor (struct inode*) ;
 int kfree (struct snd_mixer_oss_file*) ;
 struct snd_mixer_oss_file* kzalloc (int,int ) ;
 int nonseekable_open (struct inode*,struct file*) ;
 int snd_card_file_add (struct snd_card*,struct file*) ;
 int snd_card_file_remove (struct snd_card*,struct file*) ;
 int snd_card_unref (struct snd_card*) ;
 struct snd_card* snd_lookup_oss_minor_data (int ,int ) ;
 int try_module_get (int ) ;

__attribute__((used)) static int snd_mixer_oss_open(struct inode *inode, struct file *file)
{
 struct snd_card *card;
 struct snd_mixer_oss_file *fmixer;
 int err;

 err = nonseekable_open(inode, file);
 if (err < 0)
  return err;

 card = snd_lookup_oss_minor_data(iminor(inode),
      SNDRV_OSS_DEVICE_TYPE_MIXER);
 if (card == ((void*)0))
  return -ENODEV;
 if (card->mixer_oss == ((void*)0)) {
  snd_card_unref(card);
  return -ENODEV;
 }
 err = snd_card_file_add(card, file);
 if (err < 0) {
  snd_card_unref(card);
  return err;
 }
 fmixer = kzalloc(sizeof(*fmixer), GFP_KERNEL);
 if (fmixer == ((void*)0)) {
  snd_card_file_remove(card, file);
  snd_card_unref(card);
  return -ENOMEM;
 }
 fmixer->card = card;
 fmixer->mixer = card->mixer_oss;
 file->private_data = fmixer;
 if (!try_module_get(card->module)) {
  kfree(fmixer);
  snd_card_file_remove(card, file);
  snd_card_unref(card);
  return -EFAULT;
 }
 snd_card_unref(card);
 return 0;
}
