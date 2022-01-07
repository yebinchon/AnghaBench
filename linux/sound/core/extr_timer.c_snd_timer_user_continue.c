
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_timer_user {TYPE_1__* timeri; } ;
struct file {struct snd_timer_user* private_data; } ;
struct TYPE_2__ {int flags; scalar_t__ lost; } ;


 int EBADFD ;
 int SNDRV_TIMER_IFLG_PAUSED ;
 int snd_timer_continue (TYPE_1__*) ;
 int snd_timer_user_start (struct file*) ;

__attribute__((used)) static int snd_timer_user_continue(struct file *file)
{
 int err;
 struct snd_timer_user *tu;

 tu = file->private_data;
 if (!tu->timeri)
  return -EBADFD;

 if (!(tu->timeri->flags & SNDRV_TIMER_IFLG_PAUSED))
  return snd_timer_user_start(file);
 tu->timeri->lost = 0;
 err = snd_timer_continue(tu->timeri);
 if (err < 0)
  return err;
 return 0;
}
