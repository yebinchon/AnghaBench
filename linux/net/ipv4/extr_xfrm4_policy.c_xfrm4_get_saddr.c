
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int a4; } ;
typedef TYPE_1__ xfrm_address_t ;
typedef int u32 ;
struct net {int dummy; } ;
struct flowi4 {int saddr; } ;
struct dst_entry {int dummy; } ;


 int EHOSTUNREACH ;
 scalar_t__ IS_ERR (struct dst_entry*) ;
 struct dst_entry* __xfrm4_dst_lookup (struct net*,struct flowi4*,int ,int,int *,TYPE_1__*,int ) ;
 int dst_release (struct dst_entry*) ;

__attribute__((used)) static int xfrm4_get_saddr(struct net *net, int oif,
      xfrm_address_t *saddr, xfrm_address_t *daddr,
      u32 mark)
{
 struct dst_entry *dst;
 struct flowi4 fl4;

 dst = __xfrm4_dst_lookup(net, &fl4, 0, oif, ((void*)0), daddr, mark);
 if (IS_ERR(dst))
  return -EHOSTUNREACH;

 saddr->a4 = fl4.saddr;
 dst_release(dst);
 return 0;
}
