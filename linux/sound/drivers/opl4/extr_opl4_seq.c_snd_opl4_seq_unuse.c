
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ client; } ;
struct snd_seq_port_subscribe {TYPE_1__ sender; } ;
struct snd_opl4 {int access_mutex; int used; } ;


 scalar_t__ SNDRV_SEQ_CLIENT_SYSTEM ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_opl4_seq_use_dec (struct snd_opl4*) ;
 int snd_opl4_synth_shutdown (struct snd_opl4*) ;

__attribute__((used)) static int snd_opl4_seq_unuse(void *private_data, struct snd_seq_port_subscribe *info)
{
 struct snd_opl4 *opl4 = private_data;

 snd_opl4_synth_shutdown(opl4);

 mutex_lock(&opl4->access_mutex);
 opl4->used--;
 mutex_unlock(&opl4->access_mutex);

 if (info->sender.client != SNDRV_SEQ_CLIENT_SYSTEM)
  snd_opl4_seq_use_dec(opl4);
 return 0;
}
