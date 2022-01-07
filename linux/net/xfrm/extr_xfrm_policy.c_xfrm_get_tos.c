
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flowi4_tos; } ;
struct TYPE_4__ {TYPE_1__ ip4; } ;
struct flowi {TYPE_2__ u; } ;


 int AF_INET ;
 int IPTOS_RT_MASK ;

__attribute__((used)) static int xfrm_get_tos(const struct flowi *fl, int family)
{
 if (family == AF_INET)
  return IPTOS_RT_MASK & fl->u.ip4.flowi4_tos;

 return 0;
}
