
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct neighbour {int dummy; } ;
struct ndisc_options {int dummy; } ;


 int ndisc_ops_update (struct net_device const*,struct neighbour*,int ,int ,struct ndisc_options*) ;
 int neigh_update (struct neighbour*,int const*,int ,int ,int ) ;

void ndisc_update(const struct net_device *dev, struct neighbour *neigh,
    const u8 *lladdr, u8 new, u32 flags, u8 icmp6_type,
    struct ndisc_options *ndopts)
{
 neigh_update(neigh, lladdr, new, flags, 0);

 ndisc_ops_update(dev, neigh, flags, icmp6_type, ndopts);
}
