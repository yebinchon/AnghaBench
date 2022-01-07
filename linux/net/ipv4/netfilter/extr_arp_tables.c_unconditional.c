
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uncond ;
struct arpt_entry {int target_offset; int arp; } ;
struct arpt_arp {int dummy; } ;


 scalar_t__ memcmp (int *,struct arpt_arp const*,int) ;

__attribute__((used)) static inline bool unconditional(const struct arpt_entry *e)
{
 static const struct arpt_arp uncond;

 return e->target_offset == sizeof(struct arpt_entry) &&
        memcmp(&e->arp, &uncond, sizeof(uncond)) == 0;
}
