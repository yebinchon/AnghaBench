
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct bitmap_ipmac {scalar_t__ first_ip; } ;



__attribute__((used)) static inline u32
ip_to_id(const struct bitmap_ipmac *m, u32 ip)
{
 return ip - m->first_ip;
}
