
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_ac97 {int subsystem_device; scalar_t__ subsystem_vendor; } ;



__attribute__((used)) static int check_list(struct snd_ac97 *ac97, const unsigned int *list)
{
 u32 subid = ((u32)ac97->subsystem_vendor << 16) | ac97->subsystem_device;
 for (; *list; list++)
  if (*list == subid)
   return 1;
 return 0;
}
