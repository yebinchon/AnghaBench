
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm {int card; } ;
struct inode {int i_mode; } ;
struct file {int dummy; } ;


 int SNDRV_DEVICE_TYPE_PCM_CAPTURE ;
 int SNDRV_DEVICE_TYPE_PCM_PLAYBACK ;
 int S_ISCHR (int ) ;
 struct inode* file_inode (struct file*) ;
 scalar_t__ imajor (struct inode*) ;
 unsigned int iminor (struct inode*) ;
 int snd_card_unref (int ) ;
 struct snd_pcm* snd_lookup_minor_data (unsigned int,int ) ;
 scalar_t__ snd_major ;

__attribute__((used)) static bool is_pcm_file(struct file *file)
{
 struct inode *inode = file_inode(file);
 struct snd_pcm *pcm;
 unsigned int minor;

 if (!S_ISCHR(inode->i_mode) || imajor(inode) != snd_major)
  return 0;
 minor = iminor(inode);
 pcm = snd_lookup_minor_data(minor, SNDRV_DEVICE_TYPE_PCM_PLAYBACK);
 if (!pcm)
  pcm = snd_lookup_minor_data(minor, SNDRV_DEVICE_TYPE_PCM_CAPTURE);
 if (!pcm)
  return 0;
 snd_card_unref(pcm->card);
 return 1;
}
