
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pktgen_dev {TYPE_1__* flows; } ;
struct TYPE_2__ {int flags; } ;


 int F_INIT ;

__attribute__((used)) static inline int f_seen(const struct pktgen_dev *pkt_dev, int flow)
{
 return !!(pkt_dev->flows[flow].flags & F_INIT);
}
