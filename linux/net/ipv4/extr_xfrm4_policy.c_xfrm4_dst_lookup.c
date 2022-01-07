
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfrm_address_t ;
typedef int u32 ;
struct net {int dummy; } ;
struct flowi4 {int dummy; } ;
struct dst_entry {int dummy; } ;


 struct dst_entry* __xfrm4_dst_lookup (struct net*,struct flowi4*,int,int,int const*,int const*,int ) ;

__attribute__((used)) static struct dst_entry *xfrm4_dst_lookup(struct net *net, int tos, int oif,
       const xfrm_address_t *saddr,
       const xfrm_address_t *daddr,
       u32 mark)
{
 struct flowi4 fl4;

 return __xfrm4_dst_lookup(net, &fl4, tos, oif, saddr, daddr, mark);
}
