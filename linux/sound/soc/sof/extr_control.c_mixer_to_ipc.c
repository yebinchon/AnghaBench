
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline u32 mixer_to_ipc(unsigned int value, u32 *volume_map, int size)
{
 if (value >= size)
  return volume_map[size - 1];

 return volume_map[value];
}
