
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_xprt_class {int xcl_ops; } ;
struct svc_xprt {int xpt_remotebuf; int xpt_net; int xpt_flags; int xpt_lock; int xpt_mutex; int xpt_users; int xpt_deferred; int xpt_ready; int xpt_list; struct svc_serv* xpt_server; int xpt_ref; int xpt_ops; struct svc_xprt_class* xpt_class; } ;
struct svc_serv {int dummy; } ;
struct net {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int XPT_BUSY ;
 int get_net (struct net*) ;
 int kref_init (int *) ;
 int memset (struct svc_xprt*,int ,int) ;
 int mutex_init (int *) ;
 int set_bit (int ,int *) ;
 int spin_lock_init (int *) ;
 int strcpy (int ,char*) ;

void svc_xprt_init(struct net *net, struct svc_xprt_class *xcl,
     struct svc_xprt *xprt, struct svc_serv *serv)
{
 memset(xprt, 0, sizeof(*xprt));
 xprt->xpt_class = xcl;
 xprt->xpt_ops = xcl->xcl_ops;
 kref_init(&xprt->xpt_ref);
 xprt->xpt_server = serv;
 INIT_LIST_HEAD(&xprt->xpt_list);
 INIT_LIST_HEAD(&xprt->xpt_ready);
 INIT_LIST_HEAD(&xprt->xpt_deferred);
 INIT_LIST_HEAD(&xprt->xpt_users);
 mutex_init(&xprt->xpt_mutex);
 spin_lock_init(&xprt->xpt_lock);
 set_bit(XPT_BUSY, &xprt->xpt_flags);
 xprt->xpt_net = get_net(net);
 strcpy(xprt->xpt_remotebuf, "uninitialized");
}
