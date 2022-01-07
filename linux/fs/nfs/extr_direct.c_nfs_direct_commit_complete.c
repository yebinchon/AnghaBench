
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nfs_page {scalar_t__ wb_nio; } ;
struct nfs_direct_req {scalar_t__ flags; } ;
struct nfs_commit_info {TYPE_2__* mds; } ;
struct TYPE_6__ {int next; } ;
struct TYPE_4__ {int tk_status; } ;
struct nfs_commit_data {TYPE_3__ pages; TYPE_1__ task; struct nfs_direct_req* dreq; } ;
struct TYPE_5__ {int rpcs_out; } ;


 scalar_t__ NFS_ODIRECT_RESCHED_WRITES ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int list_empty (TYPE_3__*) ;
 scalar_t__ nfs_direct_cmp_commit_data_verf (struct nfs_direct_req*,struct nfs_commit_data*) ;
 int nfs_direct_write_complete (struct nfs_direct_req*) ;
 int nfs_init_cinfo_from_dreq (struct nfs_commit_info*,struct nfs_direct_req*) ;
 struct nfs_page* nfs_list_entry (int ) ;
 int nfs_list_remove_request (struct nfs_page*) ;
 int nfs_mark_request_commit (struct nfs_page*,int *,struct nfs_commit_info*,int ) ;
 int nfs_release_request (struct nfs_page*) ;
 int nfs_unlock_and_release_request (struct nfs_page*) ;

__attribute__((used)) static void nfs_direct_commit_complete(struct nfs_commit_data *data)
{
 struct nfs_direct_req *dreq = data->dreq;
 struct nfs_commit_info cinfo;
 struct nfs_page *req;
 int status = data->task.tk_status;

 nfs_init_cinfo_from_dreq(&cinfo, dreq);
 if (status < 0 || nfs_direct_cmp_commit_data_verf(dreq, data))
  dreq->flags = NFS_ODIRECT_RESCHED_WRITES;

 while (!list_empty(&data->pages)) {
  req = nfs_list_entry(data->pages.next);
  nfs_list_remove_request(req);
  if (dreq->flags == NFS_ODIRECT_RESCHED_WRITES) {




   req->wb_nio = 0;

   nfs_mark_request_commit(req, ((void*)0), &cinfo, 0);
  } else
   nfs_release_request(req);
  nfs_unlock_and_release_request(req);
 }

 if (atomic_dec_and_test(&cinfo.mds->rpcs_out))
  nfs_direct_write_complete(dreq);
}
