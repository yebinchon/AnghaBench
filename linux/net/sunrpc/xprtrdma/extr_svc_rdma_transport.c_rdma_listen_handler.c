
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct TYPE_5__ {int src_addr; } ;
struct TYPE_6__ {TYPE_2__ addr; } ;
struct rdma_cm_id {int context; TYPE_3__ route; } ;
struct TYPE_4__ {int conn; } ;
struct rdma_cm_event {int event; TYPE_1__ param; } ;



 int dprintk (char*,struct rdma_cm_id*,int ,int,...) ;
 int handle_connect_req (struct rdma_cm_id*,int *) ;
 int rdma_event_msg (int) ;
 int trace_svcrdma_cm_event (struct rdma_cm_event*,struct sockaddr*) ;

__attribute__((used)) static int rdma_listen_handler(struct rdma_cm_id *cma_id,
          struct rdma_cm_event *event)
{
 struct sockaddr *sap = (struct sockaddr *)&cma_id->route.addr.src_addr;

 trace_svcrdma_cm_event(event, sap);

 switch (event->event) {
 case 128:
  dprintk("svcrdma: Connect request on cma_id=%p, xprt = %p, "
   "event = %s (%d)\n", cma_id, cma_id->context,
   rdma_event_msg(event->event), event->event);
  handle_connect_req(cma_id, &event->param.conn);
  break;
 default:

  dprintk("svcrdma: Unexpected event on listening endpoint %p, "
   "event = %s (%d)\n", cma_id,
   rdma_event_msg(event->event), event->event);
  break;
 }

 return 0;
}
