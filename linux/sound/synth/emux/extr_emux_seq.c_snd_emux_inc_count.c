
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emux {int register_mutex; } ;


 int __snd_emux_inc_count (struct snd_emux*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int snd_emux_inc_count(struct snd_emux *emu)
{
 int ret;

 mutex_lock(&emu->register_mutex);
 ret = __snd_emux_inc_count(emu);
 mutex_unlock(&emu->register_mutex);
 return ret;
}
