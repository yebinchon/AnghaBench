
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfrm_address_t ;
typedef int u32 ;
struct net {int dummy; } ;
struct flowi6 {int saddr; int daddr; int flowi6_mark; int flowi6_flags; int flowi6_oif; } ;
struct dst_entry {int error; } ;
typedef int fl6 ;


 struct dst_entry* ERR_PTR (int) ;
 int FLOWI_FLAG_SKIP_NH_OIF ;
 int dst_release (struct dst_entry*) ;
 struct dst_entry* ip6_route_output (struct net*,int *,struct flowi6*) ;
 int l3mdev_master_ifindex_by_index (struct net*,int) ;
 int memcpy (int *,int const*,int) ;
 int memset (struct flowi6*,int ,int) ;

__attribute__((used)) static struct dst_entry *xfrm6_dst_lookup(struct net *net, int tos, int oif,
       const xfrm_address_t *saddr,
       const xfrm_address_t *daddr,
       u32 mark)
{
 struct flowi6 fl6;
 struct dst_entry *dst;
 int err;

 memset(&fl6, 0, sizeof(fl6));
 fl6.flowi6_oif = l3mdev_master_ifindex_by_index(net, oif);
 fl6.flowi6_flags = FLOWI_FLAG_SKIP_NH_OIF;
 fl6.flowi6_mark = mark;
 memcpy(&fl6.daddr, daddr, sizeof(fl6.daddr));
 if (saddr)
  memcpy(&fl6.saddr, saddr, sizeof(fl6.saddr));

 dst = ip6_route_output(net, ((void*)0), &fl6);

 err = dst->error;
 if (dst->error) {
  dst_release(dst);
  dst = ERR_PTR(err);
 }

 return dst;
}
