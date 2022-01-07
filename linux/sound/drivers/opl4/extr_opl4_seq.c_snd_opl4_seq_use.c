
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ client; } ;
struct snd_seq_port_subscribe {TYPE_1__ sender; } ;
struct snd_opl4 {int access_mutex; scalar_t__ used; } ;


 int EBUSY ;
 scalar_t__ SNDRV_SEQ_CLIENT_SYSTEM ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_opl4_seq_use_inc (struct snd_opl4*) ;
 int snd_opl4_synth_reset (struct snd_opl4*) ;

__attribute__((used)) static int snd_opl4_seq_use(void *private_data, struct snd_seq_port_subscribe *info)
{
 struct snd_opl4 *opl4 = private_data;
 int err;

 mutex_lock(&opl4->access_mutex);

 if (opl4->used) {
  mutex_unlock(&opl4->access_mutex);
  return -EBUSY;
 }
 opl4->used++;

 if (info->sender.client != SNDRV_SEQ_CLIENT_SYSTEM) {
  err = snd_opl4_seq_use_inc(opl4);
  if (err < 0) {
   mutex_unlock(&opl4->access_mutex);
   return err;
  }
 }

 mutex_unlock(&opl4->access_mutex);

 snd_opl4_synth_reset(opl4);
 return 0;
}
