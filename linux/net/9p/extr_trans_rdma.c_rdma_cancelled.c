
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_trans_rdma {int excess_rc; } ;
struct p9_req_t {int dummy; } ;
struct p9_client {struct p9_trans_rdma* trans; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static int rdma_cancelled(struct p9_client *client, struct p9_req_t *req)
{
 struct p9_trans_rdma *rdma = client->trans;
 atomic_inc(&rdma->excess_rc);
 return 0;
}
