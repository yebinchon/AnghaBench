
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_trans_rdma {int cm_id; } ;
struct p9_client {int status; struct p9_trans_rdma* trans; } ;


 int Disconnected ;
 int rdma_destroy_trans (struct p9_trans_rdma*) ;
 int rdma_disconnect (int ) ;

__attribute__((used)) static void rdma_close(struct p9_client *client)
{
 struct p9_trans_rdma *rdma;

 if (!client)
  return;

 rdma = client->trans;
 if (!rdma)
  return;

 client->status = Disconnected;
 rdma_disconnect(rdma->cm_id);
 rdma_destroy_trans(rdma);
}
