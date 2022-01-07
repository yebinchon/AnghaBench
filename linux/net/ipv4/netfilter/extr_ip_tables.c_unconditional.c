
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uncond ;
struct ipt_ip {int dummy; } ;
struct ipt_entry {int target_offset; int ip; } ;


 scalar_t__ memcmp (int *,struct ipt_ip const*,int) ;

__attribute__((used)) static inline bool unconditional(const struct ipt_entry *e)
{
 static const struct ipt_ip uncond;

 return e->target_offset == sizeof(struct ipt_entry) &&
        memcmp(&e->ip, &uncond, sizeof(uncond)) == 0;
}
