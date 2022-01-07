
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mode; int header_len; } ;
struct xfrm_state {TYPE_1__ props; scalar_t__ encap; } ;
struct iphdr {int dummy; } ;


 int EINVAL ;
 scalar_t__ XFRM_MODE_TUNNEL ;

__attribute__((used)) static int ipip_init_state(struct xfrm_state *x)
{
 if (x->props.mode != XFRM_MODE_TUNNEL)
  return -EINVAL;

 if (x->encap)
  return -EINVAL;

 x->props.header_len = sizeof(struct iphdr);

 return 0;
}
