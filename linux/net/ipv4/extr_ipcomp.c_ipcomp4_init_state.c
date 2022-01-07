
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; scalar_t__ header_len; } ;
struct xfrm_state {TYPE_1__ props; } ;
struct iphdr {int dummy; } ;


 int EINVAL ;


 int ipcomp_init_state (struct xfrm_state*) ;
 int ipcomp_tunnel_attach (struct xfrm_state*) ;

__attribute__((used)) static int ipcomp4_init_state(struct xfrm_state *x)
{
 int err = -EINVAL;

 x->props.header_len = 0;
 switch (x->props.mode) {
 case 129:
  break;
 case 128:
  x->props.header_len += sizeof(struct iphdr);
  break;
 default:
  goto out;
 }

 err = ipcomp_init_state(x);
 if (err)
  goto out;

 if (x->props.mode == 128) {
  err = ipcomp_tunnel_attach(x);
  if (err)
   goto out;
 }

 err = 0;
out:
 return err;
}
