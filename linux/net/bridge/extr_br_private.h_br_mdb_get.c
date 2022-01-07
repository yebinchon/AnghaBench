
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {int dummy; } ;
struct net_bridge_mdb_entry {int dummy; } ;
struct net_bridge {int dummy; } ;



__attribute__((used)) static inline struct net_bridge_mdb_entry *br_mdb_get(struct net_bridge *br,
            struct sk_buff *skb, u16 vid)
{
 return ((void*)0);
}
