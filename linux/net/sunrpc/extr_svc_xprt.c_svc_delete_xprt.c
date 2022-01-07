
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_xprt {int xpt_flags; int xpt_ready; int xpt_list; TYPE_1__* xpt_ops; struct svc_serv* xpt_server; } ;
struct svc_serv {int sv_lock; int sv_tmpcnt; } ;
struct svc_deferred_req {int dummy; } ;
struct TYPE_2__ {int (* xpo_detach ) (struct svc_xprt*) ;} ;


 int BUG () ;
 int WARN_ON_ONCE (int) ;
 int XPT_DEAD ;
 int XPT_TEMP ;
 int call_xpt_users (struct svc_xprt*) ;
 int dprintk (char*,struct svc_xprt*) ;
 int kfree (struct svc_deferred_req*) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct svc_xprt*) ;
 struct svc_deferred_req* svc_deferred_dequeue (struct svc_xprt*) ;
 int svc_xprt_put (struct svc_xprt*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void svc_delete_xprt(struct svc_xprt *xprt)
{
 struct svc_serv *serv = xprt->xpt_server;
 struct svc_deferred_req *dr;


 if (test_and_set_bit(XPT_DEAD, &xprt->xpt_flags))
  BUG();

 dprintk("svc: svc_delete_xprt(%p)\n", xprt);
 xprt->xpt_ops->xpo_detach(xprt);

 spin_lock_bh(&serv->sv_lock);
 list_del_init(&xprt->xpt_list);
 WARN_ON_ONCE(!list_empty(&xprt->xpt_ready));
 if (test_bit(XPT_TEMP, &xprt->xpt_flags))
  serv->sv_tmpcnt--;
 spin_unlock_bh(&serv->sv_lock);

 while ((dr = svc_deferred_dequeue(xprt)) != ((void*)0))
  kfree(dr);

 call_xpt_users(xprt);
 svc_xprt_put(xprt);
}
