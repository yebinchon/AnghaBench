
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_bridge_mdb_entry {int dummy; } ;



__attribute__((used)) static inline void br_multicast_flood(struct net_bridge_mdb_entry *mdst,
          struct sk_buff *skb,
          bool local_rcv, bool local_orig)
{
}
