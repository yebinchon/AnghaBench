
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int port; int client; } ;
struct snd_seq_oss_arg {TYPE_1__ addr; struct snd_opl3* private_data; } ;
struct snd_opl3 {int synth_mode; TYPE_2__* oss_chset; } ;
struct TYPE_4__ {int port; int client; } ;


 int ENXIO ;
 int SNDRV_OPL3_MODE_SYNTH ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_opl3_synth_setup (struct snd_opl3*) ;
 int snd_opl3_synth_use_inc (struct snd_opl3*) ;

__attribute__((used)) static int snd_opl3_open_seq_oss(struct snd_seq_oss_arg *arg, void *closure)
{
 struct snd_opl3 *opl3 = closure;
 int err;

 if (snd_BUG_ON(!arg))
  return -ENXIO;

 if ((err = snd_opl3_synth_setup(opl3)) < 0)
  return err;


 arg->private_data = opl3;
 arg->addr.client = opl3->oss_chset->client;
 arg->addr.port = opl3->oss_chset->port;

 if ((err = snd_opl3_synth_use_inc(opl3)) < 0)
  return err;

 opl3->synth_mode = SNDRV_OPL3_MODE_SYNTH;
 return 0;
}
