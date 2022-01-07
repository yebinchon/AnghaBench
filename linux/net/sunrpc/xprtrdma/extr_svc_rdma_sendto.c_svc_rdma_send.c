
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int xpt_flags; } ;
struct svcxprt_rdma {int sc_send_wait; TYPE_1__ sc_xprt; int sc_qp; int sc_sq_avail; } ;
struct ib_send_wr {int dummy; } ;


 int ENOTCONN ;
 int XPT_CLOSE ;
 scalar_t__ atomic_dec_return (int *) ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int ib_post_send (int ,struct ib_send_wr*,int *) ;
 int might_sleep () ;
 int rdma_stat_sq_starve ;
 int set_bit (int ,int *) ;
 int svc_xprt_get (TYPE_1__*) ;
 int svc_xprt_put (TYPE_1__*) ;
 scalar_t__ test_bit (int ,int *) ;
 int trace_svcrdma_post_send (struct ib_send_wr*,int) ;
 int trace_svcrdma_sq_full (struct svcxprt_rdma*) ;
 int trace_svcrdma_sq_retry (struct svcxprt_rdma*) ;
 int wait_event (int ,int) ;
 int wake_up (int *) ;

int svc_rdma_send(struct svcxprt_rdma *rdma, struct ib_send_wr *wr)
{
 int ret;

 might_sleep();


 while (1) {
  if ((atomic_dec_return(&rdma->sc_sq_avail) < 0)) {
   atomic_inc(&rdma_stat_sq_starve);
   trace_svcrdma_sq_full(rdma);
   atomic_inc(&rdma->sc_sq_avail);
   wait_event(rdma->sc_send_wait,
       atomic_read(&rdma->sc_sq_avail) > 1);
   if (test_bit(XPT_CLOSE, &rdma->sc_xprt.xpt_flags))
    return -ENOTCONN;
   trace_svcrdma_sq_retry(rdma);
   continue;
  }

  svc_xprt_get(&rdma->sc_xprt);
  ret = ib_post_send(rdma->sc_qp, wr, ((void*)0));
  trace_svcrdma_post_send(wr, ret);
  if (ret) {
   set_bit(XPT_CLOSE, &rdma->sc_xprt.xpt_flags);
   svc_xprt_put(&rdma->sc_xprt);
   wake_up(&rdma->sc_send_wait);
  }
  break;
 }
 return ret;
}
