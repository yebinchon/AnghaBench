
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char flag; } ;
struct nat_entry {TYPE_1__ ni; } ;



__attribute__((used)) static inline bool get_nat_flag(struct nat_entry *ne, unsigned int type)
{
 unsigned char mask = 0x01 << type;
 return ne->ni.flag & mask;
}
