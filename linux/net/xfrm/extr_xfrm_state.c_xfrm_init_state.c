
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;
struct xfrm_state {TYPE_1__ km; } ;


 int XFRM_STATE_VALID ;
 int __xfrm_init_state (struct xfrm_state*,int,int) ;

int xfrm_init_state(struct xfrm_state *x)
{
 int err;

 err = __xfrm_init_state(x, 1, 0);
 if (!err)
  x->km.state = XFRM_STATE_VALID;

 return err;
}
