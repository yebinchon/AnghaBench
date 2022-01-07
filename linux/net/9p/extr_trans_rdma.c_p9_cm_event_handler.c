
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_cm_id {struct p9_client* context; } ;
struct rdma_cm_event {int event; } ;
struct p9_trans_rdma {int cm_done; int cm_id; int state; } ;
struct p9_client {void* status; struct p9_trans_rdma* trans; } ;


 int BUG () ;
 int BUG_ON (int) ;
 void* Disconnected ;
 int P9_RDMA_ADDR_RESOLVED ;
 int P9_RDMA_CLOSED ;
 int P9_RDMA_CONNECTED ;
 int P9_RDMA_INIT ;
 int P9_RDMA_ROUTE_RESOLVED ;
 int complete (int *) ;
 int rdma_disconnect (int ) ;

__attribute__((used)) static int
p9_cm_event_handler(struct rdma_cm_id *id, struct rdma_cm_event *event)
{
 struct p9_client *c = id->context;
 struct p9_trans_rdma *rdma = c->trans;
 switch (event->event) {
 case 141:
  BUG_ON(rdma->state != P9_RDMA_INIT);
  rdma->state = P9_RDMA_ADDR_RESOLVED;
  break;

 case 130:
  BUG_ON(rdma->state != P9_RDMA_ADDR_RESOLVED);
  rdma->state = P9_RDMA_ROUTE_RESOLVED;
  break;

 case 135:
  BUG_ON(rdma->state != P9_RDMA_ROUTE_RESOLVED);
  rdma->state = P9_RDMA_CONNECTED;
  break;

 case 136:
  if (rdma)
   rdma->state = P9_RDMA_CLOSED;
  c->status = Disconnected;
  break;

 case 129:
  break;

 case 143:
 case 131:
 case 137:
 case 133:
 case 134:
 case 132:
 case 139:
 case 138:
 case 140:
 case 142:
 case 128:
  c->status = Disconnected;
  rdma_disconnect(rdma->cm_id);
  break;
 default:
  BUG();
 }
 complete(&rdma->cm_done);
 return 0;
}
