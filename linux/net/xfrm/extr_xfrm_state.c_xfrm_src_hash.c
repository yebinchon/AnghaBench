
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfrm_address_t ;
struct TYPE_2__ {int state_hmask; } ;
struct net {TYPE_1__ xfrm; } ;


 unsigned int __xfrm_src_hash (int const*,int const*,unsigned short,int ) ;

__attribute__((used)) static inline unsigned int xfrm_src_hash(struct net *net,
      const xfrm_address_t *daddr,
      const xfrm_address_t *saddr,
      unsigned short family)
{
 return __xfrm_src_hash(daddr, saddr, family, net->xfrm.state_hmask);
}
