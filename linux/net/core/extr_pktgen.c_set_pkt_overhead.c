
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pktgen_dev {int nr_labels; scalar_t__ pkt_overhead; } ;


 scalar_t__ SVLAN_TAG_SIZE (struct pktgen_dev*) ;
 scalar_t__ VLAN_TAG_SIZE (struct pktgen_dev*) ;

__attribute__((used)) static inline void set_pkt_overhead(struct pktgen_dev *pkt_dev)
{
 pkt_dev->pkt_overhead = 0;
 pkt_dev->pkt_overhead += pkt_dev->nr_labels*sizeof(u32);
 pkt_dev->pkt_overhead += VLAN_TAG_SIZE(pkt_dev);
 pkt_dev->pkt_overhead += SVLAN_TAG_SIZE(pkt_dev);
}
