
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_efw {int dummy; } ;


 int UINT_MAX ;
 int command_set_clock (struct snd_efw*,int ,unsigned int) ;

int snd_efw_command_set_sampling_rate(struct snd_efw *efw, unsigned int rate)
{
 return command_set_clock(efw, UINT_MAX, rate);
}
