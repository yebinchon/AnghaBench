
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_efw {int dummy; } ;
struct efc_clock {unsigned int sampling_rate; int member_0; } ;


 int command_get_clock (struct snd_efw*,struct efc_clock*) ;

int snd_efw_command_get_sampling_rate(struct snd_efw *efw, unsigned int *rate)
{
 int err;
 struct efc_clock clock = {0};

 err = command_get_clock(efw, &clock);
 if (err >= 0)
  *rate = clock.sampling_rate;

 return err;
}
