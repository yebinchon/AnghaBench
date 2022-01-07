
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct svc_xprt {int xpt_reserved; TYPE_3__* xpt_ops; int xpt_ref; TYPE_1__* xpt_class; int xpt_cred; int xpt_server; int xpt_flags; } ;
struct svc_serv {int sv_max_mesg; } ;
struct svc_rqst {int rq_reserved; int rq_stime; int rq_deferred; TYPE_2__* rq_pool; struct svc_serv* rq_server; } ;
struct TYPE_6__ {int (* xpo_recvfrom ) (struct svc_rqst*) ;struct svc_xprt* (* xpo_accept ) (struct svc_xprt*) ;int (* xpo_kill_temp_xprt ) (struct svc_xprt*) ;} ;
struct TYPE_5__ {int sp_id; } ;
struct TYPE_4__ {int xcl_owner; } ;


 int XPT_CLOSE ;
 int XPT_KILL_TEMP ;
 int XPT_LISTENER ;
 int __module_get (int ) ;
 int atomic_add (int ,int *) ;
 int dprintk (char*,...) ;
 int get_cred (int ) ;
 int kref_read (int *) ;
 int ktime_get () ;
 int module_put (int ) ;
 int stub1 (struct svc_xprt*) ;
 struct svc_xprt* stub2 (struct svc_xprt*) ;
 int stub3 (struct svc_rqst*) ;
 int svc_add_new_temp_xprt (struct svc_serv*,struct svc_xprt*) ;
 int svc_check_conn_limits (int ) ;
 int svc_deferred_dequeue (struct svc_xprt*) ;
 int svc_deferred_recv (struct svc_rqst*) ;
 int svc_delete_xprt (struct svc_xprt*) ;
 int svc_xprt_received (struct svc_xprt*) ;
 scalar_t__ svc_xprt_reserve_slot (struct svc_rqst*,struct svc_xprt*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int trace_svc_handle_xprt (struct svc_xprt*,int) ;

__attribute__((used)) static int svc_handle_xprt(struct svc_rqst *rqstp, struct svc_xprt *xprt)
{
 struct svc_serv *serv = rqstp->rq_server;
 int len = 0;

 if (test_bit(XPT_CLOSE, &xprt->xpt_flags)) {
  dprintk("svc_recv: found XPT_CLOSE\n");
  if (test_and_clear_bit(XPT_KILL_TEMP, &xprt->xpt_flags))
   xprt->xpt_ops->xpo_kill_temp_xprt(xprt);
  svc_delete_xprt(xprt);

  goto out;
 }
 if (test_bit(XPT_LISTENER, &xprt->xpt_flags)) {
  struct svc_xprt *newxpt;




  __module_get(xprt->xpt_class->xcl_owner);
  svc_check_conn_limits(xprt->xpt_server);
  newxpt = xprt->xpt_ops->xpo_accept(xprt);
  if (newxpt) {
   newxpt->xpt_cred = get_cred(xprt->xpt_cred);
   svc_add_new_temp_xprt(serv, newxpt);
  } else
   module_put(xprt->xpt_class->xcl_owner);
 } else if (svc_xprt_reserve_slot(rqstp, xprt)) {

  dprintk("svc: server %p, pool %u, transport %p, inuse=%d\n",
   rqstp, rqstp->rq_pool->sp_id, xprt,
   kref_read(&xprt->xpt_ref));
  rqstp->rq_deferred = svc_deferred_dequeue(xprt);
  if (rqstp->rq_deferred)
   len = svc_deferred_recv(rqstp);
  else
   len = xprt->xpt_ops->xpo_recvfrom(rqstp);
  rqstp->rq_stime = ktime_get();
  rqstp->rq_reserved = serv->sv_max_mesg;
  atomic_add(rqstp->rq_reserved, &xprt->xpt_reserved);
 }

 svc_xprt_received(xprt);
out:
 trace_svc_handle_xprt(xprt, len);
 return len;
}
