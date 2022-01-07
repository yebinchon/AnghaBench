
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emux {int register_mutex; } ;


 int __snd_emux_dec_count (struct snd_emux*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void snd_emux_dec_count(struct snd_emux *emu)
{
 mutex_lock(&emu->register_mutex);
 __snd_emux_dec_count(emu);
 mutex_unlock(&emu->register_mutex);
}
