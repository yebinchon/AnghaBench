
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_efw {int dummy; } ;
struct efc_clock {int source; int member_0; } ;
typedef enum snd_efw_clock_source { ____Placeholder_snd_efw_clock_source } snd_efw_clock_source ;


 int command_get_clock (struct snd_efw*,struct efc_clock*) ;

int snd_efw_command_get_clock_source(struct snd_efw *efw,
         enum snd_efw_clock_source *source)
{
 int err;
 struct efc_clock clock = {0};

 err = command_get_clock(efw, &clock);
 if (err >= 0)
  *source = clock.source;

 return err;
}
