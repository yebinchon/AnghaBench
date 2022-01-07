
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int da; int dst_name; } ;
struct j1939_sk_buff_cb {TYPE_1__ addr; } ;



__attribute__((used)) static inline bool j1939_cb_is_broadcast(const struct j1939_sk_buff_cb *skcb)
{
 return (!skcb->addr.dst_name && (skcb->addr.da == 0xff));
}
