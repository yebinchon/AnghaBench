
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_xprt {int xpt_flags; } ;


 int XPT_BUSY ;
 int XPT_CLOSE ;
 int set_bit (int ,int *) ;
 int svc_delete_xprt (struct svc_xprt*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

void svc_close_xprt(struct svc_xprt *xprt)
{
 set_bit(XPT_CLOSE, &xprt->xpt_flags);
 if (test_and_set_bit(XPT_BUSY, &xprt->xpt_flags))

  return;






 svc_delete_xprt(xprt);
}
