
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rme9652 {int control_register; } ;


 int RME9652_opt_out ;

__attribute__((used)) static int rme9652_spdif_out(struct snd_rme9652 *rme9652)
{
 return (rme9652->control_register & RME9652_opt_out) ? 1 : 0;
}
