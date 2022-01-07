
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct loopback_pcm {TYPE_1__* loopback; } ;
struct TYPE_4__ {int active_id; } ;
struct TYPE_3__ {int card; } ;


 int SNDRV_CTL_EVENT_MASK_VALUE ;
 TYPE_2__* get_setup (struct loopback_pcm*) ;
 int snd_ctl_notify (int ,int ,int *) ;

__attribute__((used)) static void loopback_active_notify(struct loopback_pcm *dpcm)
{
 snd_ctl_notify(dpcm->loopback->card,
         SNDRV_CTL_EVENT_MASK_VALUE,
         &get_setup(dpcm)->active_id);
}
