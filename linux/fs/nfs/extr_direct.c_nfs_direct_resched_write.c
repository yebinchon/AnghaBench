
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_page {int dummy; } ;
struct nfs_direct_req {int lock; int flags; } ;
struct nfs_commit_info {struct nfs_direct_req* dreq; } ;


 int NFS_ODIRECT_RESCHED_WRITES ;
 int nfs_mark_request_commit (struct nfs_page*,int *,struct nfs_commit_info*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void nfs_direct_resched_write(struct nfs_commit_info *cinfo,
  struct nfs_page *req)
{
 struct nfs_direct_req *dreq = cinfo->dreq;

 spin_lock(&dreq->lock);
 dreq->flags = NFS_ODIRECT_RESCHED_WRITES;
 spin_unlock(&dreq->lock);
 nfs_mark_request_commit(req, ((void*)0), cinfo, 0);
}
