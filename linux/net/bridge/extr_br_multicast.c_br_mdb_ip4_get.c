
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_bridge_mdb_entry {int dummy; } ;
struct net_bridge {int dummy; } ;
struct TYPE_2__ {int ip4; } ;
struct br_ip {int vid; int proto; TYPE_1__ u; } ;
typedef int br_dst ;
typedef int __u16 ;
typedef int __be32 ;


 int ETH_P_IP ;
 struct net_bridge_mdb_entry* br_mdb_ip_get (struct net_bridge*,struct br_ip*) ;
 int htons (int ) ;
 int memset (struct br_ip*,int ,int) ;

__attribute__((used)) static struct net_bridge_mdb_entry *br_mdb_ip4_get(struct net_bridge *br,
         __be32 dst, __u16 vid)
{
 struct br_ip br_dst;

 memset(&br_dst, 0, sizeof(br_dst));
 br_dst.u.ip4 = dst;
 br_dst.proto = htons(ETH_P_IP);
 br_dst.vid = vid;

 return br_mdb_ip_get(br, &br_dst);
}
