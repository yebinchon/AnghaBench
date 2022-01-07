
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_xprt {int xpt_flags; int xpt_remote; } ;
struct sockaddr {int dummy; } ;
struct ib_event {int event; } ;
 int XPT_CLOSE ;
 int set_bit (int ,int *) ;
 int svc_xprt_enqueue (struct svc_xprt*) ;
 int trace_svcrdma_qp_error (struct ib_event*,struct sockaddr*) ;

__attribute__((used)) static void qp_event_handler(struct ib_event *event, void *context)
{
 struct svc_xprt *xprt = context;

 trace_svcrdma_qp_error(event, (struct sockaddr *)&xprt->xpt_remote);
 switch (event->event) {

 case 134:
 case 136:
 case 128:
 case 130:
  break;


 case 133:
 case 131:
 case 129:
 case 132:
 case 135:
 default:
  set_bit(XPT_CLOSE, &xprt->xpt_flags);
  svc_xprt_enqueue(xprt);
  break;
 }
}
