
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_efw {int dummy; } ;
struct efc_clock {unsigned int source; unsigned int sampling_rate; unsigned int index; int member_0; } ;
typedef int __be32 ;


 int EFC_CAT_HWCTL ;
 int EFC_CMD_HWCTL_SET_CLOCK ;
 int EINVAL ;
 unsigned int UINT_MAX ;
 int command_get_clock (struct snd_efw*,struct efc_clock*) ;
 int cpu_to_be32s (unsigned int*) ;
 int efw_transaction (struct snd_efw*,int ,int ,int *,int,int *,int ) ;
 int msleep (int) ;

__attribute__((used)) static int
command_set_clock(struct snd_efw *efw,
    unsigned int source, unsigned int rate)
{
 struct efc_clock clock = {0};
 int err;


 if ((source == UINT_MAX) && (rate == UINT_MAX)) {
  err = -EINVAL;
  goto end;
 }


 err = command_get_clock(efw, &clock);
 if (err < 0)
  goto end;


 if ((clock.source == source) && (clock.sampling_rate == rate))
  goto end;


 if ((source != UINT_MAX) && (clock.source != source))
  clock.source = source;
 if ((rate != UINT_MAX) && (clock.sampling_rate != rate))
  clock.sampling_rate = rate;
 clock.index = 0;

 cpu_to_be32s(&clock.source);
 cpu_to_be32s(&clock.sampling_rate);
 cpu_to_be32s(&clock.index);

 err = efw_transaction(efw, EFC_CAT_HWCTL,
         EFC_CMD_HWCTL_SET_CLOCK,
         (__be32 *)&clock, sizeof(struct efc_clock),
         ((void*)0), 0);
 if (err < 0)
  goto end;






 msleep(150);
end:
 return err;
}
