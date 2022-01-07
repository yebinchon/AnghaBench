
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_direct_req {int work; } ;


 int nfsiod_workqueue ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void nfs_direct_write_complete(struct nfs_direct_req *dreq)
{
 queue_work(nfsiod_workqueue, &dreq->work);
}
