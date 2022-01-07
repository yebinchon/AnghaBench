
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_cm_id {int dummy; } ;
struct rdma_cm_event {int dummy; } ;


 int rds_rdma_cm_event_handler_cmn (struct rdma_cm_id*,struct rdma_cm_event*,int) ;

int rds_rdma_cm_event_handler(struct rdma_cm_id *cm_id,
         struct rdma_cm_event *event)
{
 return rds_rdma_cm_event_handler_cmn(cm_id, event, 0);
}
