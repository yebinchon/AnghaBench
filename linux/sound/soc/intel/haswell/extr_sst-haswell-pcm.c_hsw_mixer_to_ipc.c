
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 unsigned int ARRAY_SIZE (int *) ;
 int * volume_map ;

__attribute__((used)) static inline u32 hsw_mixer_to_ipc(unsigned int value)
{
 if (value >= ARRAY_SIZE(volume_map))
  return volume_map[0];
 else
  return volume_map[value];
}
