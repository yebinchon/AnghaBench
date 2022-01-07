
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct snd_timer_user {int ticks; TYPE_1__* timeri; scalar_t__ last_resolution; } ;
struct file {struct snd_timer_user* private_data; } ;
struct TYPE_3__ {scalar_t__ lost; } ;


 int EBADFD ;
 int snd_timer_start (TYPE_1__*,int ) ;
 int snd_timer_stop (TYPE_1__*) ;

__attribute__((used)) static int snd_timer_user_start(struct file *file)
{
 int err;
 struct snd_timer_user *tu;

 tu = file->private_data;
 if (!tu->timeri)
  return -EBADFD;
 snd_timer_stop(tu->timeri);
 tu->timeri->lost = 0;
 tu->last_resolution = 0;
 err = snd_timer_start(tu->timeri, tu->ticks);
 if (err < 0)
  return err;
 return 0;
}
