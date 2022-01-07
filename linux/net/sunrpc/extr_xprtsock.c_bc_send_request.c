
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_xprt {int xpt_mutex; int xpt_flags; } ;
struct rpc_rqst {TYPE_1__* rq_xprt; int rq_xid; } ;
struct TYPE_2__ {struct svc_xprt* bc_xprt; } ;


 int ENOTCONN ;
 int XPT_DEAD ;
 int bc_sendto (struct rpc_rqst*) ;
 int dprintk (char*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ntohl (int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int bc_send_request(struct rpc_rqst *req)
{
 struct svc_xprt *xprt;
 int len;

 dprintk("sending request with xid: %08x\n", ntohl(req->rq_xid));



 xprt = req->rq_xprt->bc_xprt;





 mutex_lock(&xprt->xpt_mutex);
 if (test_bit(XPT_DEAD, &xprt->xpt_flags))
  len = -ENOTCONN;
 else
  len = bc_sendto(req);
 mutex_unlock(&xprt->xpt_mutex);

 if (len > 0)
  len = 0;

 return len;
}
