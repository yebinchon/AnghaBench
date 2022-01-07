
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct svc_xprt {TYPE_2__* xpt_server; int xpt_flags; } ;
struct TYPE_4__ {TYPE_1__* sv_ops; } ;
struct TYPE_3__ {int (* svo_enqueue_xprt ) (struct svc_xprt*) ;} ;


 int WARN_ONCE (int,char*,struct svc_xprt*) ;
 int XPT_BUSY ;
 int clear_bit (int ,int *) ;
 int smp_mb__before_atomic () ;
 int stub1 (struct svc_xprt*) ;
 int svc_xprt_get (struct svc_xprt*) ;
 int svc_xprt_put (struct svc_xprt*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void svc_xprt_received(struct svc_xprt *xprt)
{
 if (!test_bit(XPT_BUSY, &xprt->xpt_flags)) {
  WARN_ONCE(1, "xprt=0x%p already busy!", xprt);
  return;
 }




 svc_xprt_get(xprt);
 smp_mb__before_atomic();
 clear_bit(XPT_BUSY, &xprt->xpt_flags);
 xprt->xpt_server->sv_ops->svo_enqueue_xprt(xprt);
 svc_xprt_put(xprt);
}
