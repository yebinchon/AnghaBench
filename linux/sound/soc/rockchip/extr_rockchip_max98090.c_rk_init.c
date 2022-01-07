
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int dummy; } ;


 int headset_jack ;
 int rk_jack_nb ;
 int snd_soc_jack_notifier_register (int *,int *) ;

__attribute__((used)) static int rk_init(struct snd_soc_pcm_runtime *runtime)
{




 snd_soc_jack_notifier_register(&headset_jack, &rk_jack_nb);

 return 0;
}
