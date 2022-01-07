
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct svc_xprt {TYPE_2__* xpt_server; int xpt_flags; } ;
struct TYPE_4__ {TYPE_1__* sv_ops; } ;
struct TYPE_3__ {int (* svo_enqueue_xprt ) (struct svc_xprt*) ;} ;


 int XPT_BUSY ;
 int stub1 (struct svc_xprt*) ;
 scalar_t__ test_bit (int ,int *) ;

void svc_xprt_enqueue(struct svc_xprt *xprt)
{
 if (test_bit(XPT_BUSY, &xprt->xpt_flags))
  return;
 xprt->xpt_server->sv_ops->svo_enqueue_xprt(xprt);
}
