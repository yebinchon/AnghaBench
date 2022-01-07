
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct nfs_server {int writeback; } ;
struct nfs_page {scalar_t__ wb_page; int wb_verf; int wb_bytes; } ;
struct nfs_commit_info {int mds; } ;
struct TYPE_9__ {int verifier; } ;
struct TYPE_11__ {int next; } ;
struct TYPE_7__ {int tk_status; } ;
struct nfs_commit_data {int dreq; int inode; TYPE_3__ verf; TYPE_5__ pages; TYPE_1__ task; } ;
struct TYPE_12__ {TYPE_2__* d_sb; } ;
struct TYPE_10__ {int flags; TYPE_6__* dentry; } ;
struct TYPE_8__ {int s_id; } ;


 int BLK_RW_ASYNC ;
 scalar_t__ NFS_CONGESTION_OFF_THRESH ;
 int NFS_CONTEXT_RESEND_WRITES ;
 scalar_t__ NFS_FILEID (int ) ;
 struct nfs_server* NFS_SERVER (int ) ;
 scalar_t__ atomic_long_read (int *) ;
 int clear_bdi_congested (int ,int ) ;
 int cond_resched () ;
 int d_inode (TYPE_6__*) ;
 int dprintk (char*,int ,unsigned long long,int ,long long) ;
 int dprintk_cont (char*,...) ;
 int inode_to_bdi (int ) ;
 int list_empty (TYPE_5__*) ;
 int nfs_clear_page_commit (scalar_t__) ;
 int nfs_commit_end (int ) ;
 int nfs_init_cinfo (struct nfs_commit_info*,int ,int ) ;
 int nfs_inode_remove_request (struct nfs_page*) ;
 struct nfs_page* nfs_list_entry (int ) ;
 int nfs_list_remove_request (struct nfs_page*) ;
 int nfs_mapping_set_error (scalar_t__,int) ;
 int nfs_mark_request_dirty (struct nfs_page*) ;
 TYPE_4__* nfs_req_openctx (struct nfs_page*) ;
 int nfs_unlock_and_release_request (struct nfs_page*) ;
 int nfs_write_verifier_cmp (int *,int *) ;
 scalar_t__ req_offset (struct nfs_page*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void nfs_commit_release_pages(struct nfs_commit_data *data)
{
 struct nfs_page *req;
 int status = data->task.tk_status;
 struct nfs_commit_info cinfo;
 struct nfs_server *nfss;

 while (!list_empty(&data->pages)) {
  req = nfs_list_entry(data->pages.next);
  nfs_list_remove_request(req);
  if (req->wb_page)
   nfs_clear_page_commit(req->wb_page);

  dprintk("NFS:       commit (%s/%llu %d@%lld)",
   nfs_req_openctx(req)->dentry->d_sb->s_id,
   (unsigned long long)NFS_FILEID(d_inode(nfs_req_openctx(req)->dentry)),
   req->wb_bytes,
   (long long)req_offset(req));
  if (status < 0) {
   if (req->wb_page) {
    nfs_mapping_set_error(req->wb_page, status);
    nfs_inode_remove_request(req);
   }
   dprintk_cont(", error = %d\n", status);
   goto next;
  }



  if (!nfs_write_verifier_cmp(&req->wb_verf, &data->verf.verifier)) {

   if (req->wb_page)
    nfs_inode_remove_request(req);
   dprintk_cont(" OK\n");
   goto next;
  }

  dprintk_cont(" mismatch\n");
  nfs_mark_request_dirty(req);
  set_bit(NFS_CONTEXT_RESEND_WRITES, &nfs_req_openctx(req)->flags);
 next:
  nfs_unlock_and_release_request(req);

  cond_resched();
 }
 nfss = NFS_SERVER(data->inode);
 if (atomic_long_read(&nfss->writeback) < NFS_CONGESTION_OFF_THRESH)
  clear_bdi_congested(inode_to_bdi(data->inode), BLK_RW_ASYNC);

 nfs_init_cinfo(&cinfo, data->inode, data->dreq);
 nfs_commit_end(cinfo.mds);
}
