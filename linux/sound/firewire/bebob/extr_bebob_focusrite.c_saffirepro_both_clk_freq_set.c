
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct snd_bebob {int dummy; } ;


 size_t ARRAY_SIZE (unsigned int*) ;
 int EINVAL ;
 int SAFFIREPRO_RATE_NOREBOOT ;
 unsigned int* rates ;
 int saffire_write_quad (struct snd_bebob*,int ,size_t) ;

__attribute__((used)) static int
saffirepro_both_clk_freq_set(struct snd_bebob *bebob, unsigned int rate)
{
 u32 id;

 for (id = 0; id < ARRAY_SIZE(rates); id++) {
  if (rates[id] == rate)
   break;
 }
 if (id == ARRAY_SIZE(rates))
  return -EINVAL;

 return saffire_write_quad(bebob, SAFFIREPRO_RATE_NOREBOOT, id);
}
