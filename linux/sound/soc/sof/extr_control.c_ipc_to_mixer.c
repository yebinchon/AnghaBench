
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;



__attribute__((used)) static inline u32 ipc_to_mixer(u32 value, u32 *volume_map, int size)
{
 int i;

 for (i = 0; i < size; i++) {
  if (volume_map[i] >= value)
   return i;
 }

 return i - 1;
}
