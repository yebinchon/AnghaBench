
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (unsigned int*) ;
 int EINVAL ;
 unsigned int* freq_table ;
 unsigned int get_multiplier_mode_with_index (unsigned int) ;

int snd_efw_get_multiplier_mode(unsigned int sampling_rate, unsigned int *mode)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(freq_table); i++) {
  if (freq_table[i] == sampling_rate) {
   *mode = get_multiplier_mode_with_index(i);
   return 0;
  }
 }

 return -EINVAL;
}
