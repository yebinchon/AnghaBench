
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_hwdep {struct snd_card* card; } ;
struct snd_card {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int pcm_mutex; int chip_status; } ;


 int USX2Y_STAT_CHIP_MMAP_PCM_URBS ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* usX2Y (struct snd_card*) ;
 int usX2Y_pcms_busy_check (struct snd_card*) ;

__attribute__((used)) static int snd_usX2Y_hwdep_pcm_open(struct snd_hwdep *hw, struct file *file)
{
 struct snd_card *card = hw->card;
 int err;

 mutex_lock(&usX2Y(card)->pcm_mutex);
 err = usX2Y_pcms_busy_check(card);
 if (!err)
  usX2Y(card)->chip_status |= USX2Y_STAT_CHIP_MMAP_PCM_URBS;
 mutex_unlock(&usX2Y(card)->pcm_mutex);
 return err;
}
