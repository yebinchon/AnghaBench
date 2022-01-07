
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_hw_rule {int var; struct loopback_pcm* private; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_interval {scalar_t__ integer; scalar_t__ openmax; scalar_t__ openmin; int max; int min; } ;
struct loopback_pcm {TYPE_2__* loopback; struct loopback_cable* cable; } ;
struct TYPE_3__ {int channels_max; int channels_min; } ;
struct loopback_cable {TYPE_1__ hw; } ;
struct TYPE_4__ {int cable_lock; } ;


 int hw_param_interval (struct snd_pcm_hw_params*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_interval_refine (int ,struct snd_interval*) ;

__attribute__((used)) static int rule_channels(struct snd_pcm_hw_params *params,
    struct snd_pcm_hw_rule *rule)
{
 struct loopback_pcm *dpcm = rule->private;
 struct loopback_cable *cable = dpcm->cable;
 struct snd_interval t;

 mutex_lock(&dpcm->loopback->cable_lock);
 t.min = cable->hw.channels_min;
 t.max = cable->hw.channels_max;
 mutex_unlock(&dpcm->loopback->cable_lock);
        t.openmin = t.openmax = 0;
        t.integer = 0;
 return snd_interval_refine(hw_param_interval(params, rule->var), &t);
}
