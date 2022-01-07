
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef size_t u16 ;
struct selinux_mapping {unsigned int num_perms; int* perms; } ;
struct selinux_map {size_t size; struct selinux_mapping* mapping; } ;
struct av_decision {int allowed; int auditallow; int auditdeny; } ;



__attribute__((used)) static void map_decision(struct selinux_map *map,
    u16 tclass, struct av_decision *avd,
    int allow_unknown)
{
 if (tclass < map->size) {
  struct selinux_mapping *mapping = &map->mapping[tclass];
  unsigned int i, n = mapping->num_perms;
  u32 result;

  for (i = 0, result = 0; i < n; i++) {
   if (avd->allowed & mapping->perms[i])
    result |= 1<<i;
   if (allow_unknown && !mapping->perms[i])
    result |= 1<<i;
  }
  avd->allowed = result;

  for (i = 0, result = 0; i < n; i++)
   if (avd->auditallow & mapping->perms[i])
    result |= 1<<i;
  avd->auditallow = result;

  for (i = 0, result = 0; i < n; i++) {
   if (avd->auditdeny & mapping->perms[i])
    result |= 1<<i;
   if (!allow_unknown && !mapping->perms[i])
    result |= 1<<i;
  }





  for (; i < (sizeof(u32)*8); i++)
   result |= 1<<i;
  avd->auditdeny = result;
 }
}
