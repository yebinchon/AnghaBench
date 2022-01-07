
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dst_entry {TYPE_1__* dev; } ;
struct TYPE_2__ {unsigned int mtu; } ;



__attribute__((used)) static unsigned int fake_mtu(const struct dst_entry *dst)
{
 return dst->dev->mtu;
}
