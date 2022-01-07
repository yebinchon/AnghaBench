
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_efw {int dummy; } ;
struct efc_clock {int index; int sampling_rate; int source; } ;
typedef int __be32 ;


 int EFC_CAT_HWCTL ;
 int EFC_CMD_HWCTL_GET_CLOCK ;
 int be32_to_cpus (int *) ;
 int efw_transaction (struct snd_efw*,int ,int ,int *,int ,int *,int) ;

__attribute__((used)) static int
command_get_clock(struct snd_efw *efw, struct efc_clock *clock)
{
 int err;

 err = efw_transaction(efw, EFC_CAT_HWCTL,
         EFC_CMD_HWCTL_GET_CLOCK,
         ((void*)0), 0,
         (__be32 *)clock, sizeof(struct efc_clock));
 if (err >= 0) {
  be32_to_cpus(&clock->source);
  be32_to_cpus(&clock->sampling_rate);
  be32_to_cpus(&clock->index);
 }

 return err;
}
