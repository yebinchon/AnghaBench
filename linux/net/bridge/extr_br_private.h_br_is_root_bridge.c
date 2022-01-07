
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge {int designated_root; int bridge_id; } ;


 int memcmp (int *,int *,int) ;

__attribute__((used)) static inline int br_is_root_bridge(const struct net_bridge *br)
{
 return !memcmp(&br->bridge_id, &br->designated_root, 8);
}
