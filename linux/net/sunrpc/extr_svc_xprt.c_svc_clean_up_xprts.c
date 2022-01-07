
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_xprt {int xpt_flags; } ;
struct svc_serv {int dummy; } ;
struct net {int dummy; } ;


 int XPT_CLOSE ;
 int set_bit (int ,int *) ;
 int svc_delete_xprt (struct svc_xprt*) ;
 struct svc_xprt* svc_dequeue_net (struct svc_serv*,struct net*) ;

__attribute__((used)) static void svc_clean_up_xprts(struct svc_serv *serv, struct net *net)
{
 struct svc_xprt *xprt;

 while ((xprt = svc_dequeue_net(serv, net))) {
  set_bit(XPT_CLOSE, &xprt->xpt_flags);
  svc_delete_xprt(xprt);
 }
}
