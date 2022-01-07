
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (unsigned int*) ;
 int EINVAL ;
 unsigned int* snd_bebob_rate_table ;

__attribute__((used)) static int
get_formation_index(unsigned int rate, unsigned int *index)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(snd_bebob_rate_table); i++) {
  if (snd_bebob_rate_table[i] == rate) {
   *index = i;
   return 0;
  }
 }
 return -EINVAL;
}
