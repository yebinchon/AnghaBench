
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dn_fib_res {TYPE_2__* fi; int prefixlen; } ;
typedef int __le16 ;
struct TYPE_4__ {TYPE_1__* fib_nh; } ;
struct TYPE_3__ {int nh_gw; } ;


 int dnet_make_mask (int ) ;

__attribute__((used)) static inline __le16 dn_fib_rules_map_destination(__le16 daddr, struct dn_fib_res *res)
{
 __le16 mask = dnet_make_mask(res->prefixlen);
 return (daddr&~mask)|res->fi->fib_nh->nh_gw;
}
