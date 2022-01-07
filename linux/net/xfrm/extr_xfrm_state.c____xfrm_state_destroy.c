
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfrm_state {TYPE_1__* type; scalar_t__ type_offload; int preplay_esn; int replay_esn; int coaddr; int encap; int calg; int ealg; int aalg; int aead; int rtimer; int mtimer; } ;
struct TYPE_2__ {int (* destructor ) (struct xfrm_state*) ;} ;


 int del_timer_sync (int *) ;
 int hrtimer_cancel (int *) ;
 int kfree (int ) ;
 int security_xfrm_state_free (struct xfrm_state*) ;
 int stub1 (struct xfrm_state*) ;
 int xfrm_dev_state_free (struct xfrm_state*) ;
 int xfrm_put_type (TYPE_1__*) ;
 int xfrm_put_type_offload (scalar_t__) ;
 int xfrm_state_free (struct xfrm_state*) ;

__attribute__((used)) static void ___xfrm_state_destroy(struct xfrm_state *x)
{
 hrtimer_cancel(&x->mtimer);
 del_timer_sync(&x->rtimer);
 kfree(x->aead);
 kfree(x->aalg);
 kfree(x->ealg);
 kfree(x->calg);
 kfree(x->encap);
 kfree(x->coaddr);
 kfree(x->replay_esn);
 kfree(x->preplay_esn);
 if (x->type_offload)
  xfrm_put_type_offload(x->type_offload);
 if (x->type) {
  x->type->destructor(x);
  xfrm_put_type(x->type);
 }
 xfrm_dev_state_free(x);
 security_xfrm_state_free(x);
 xfrm_state_free(x);
}
