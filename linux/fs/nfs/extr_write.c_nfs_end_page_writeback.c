
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_server {int writeback; } ;
struct nfs_page {int wb_page; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {struct inode* host; } ;


 int BLK_RW_ASYNC ;
 scalar_t__ NFS_CONGESTION_OFF_THRESH ;
 struct nfs_server* NFS_SERVER (struct inode*) ;
 int PG_WB_END ;
 scalar_t__ atomic_long_dec_return (int *) ;
 int clear_bdi_congested (int ,int ) ;
 int end_page_writeback (int ) ;
 int inode_to_bdi (struct inode*) ;
 int nfs_page_group_sync_on_bit (struct nfs_page*,int ) ;
 int nfs_unlock_request (struct nfs_page*) ;
 TYPE_1__* page_file_mapping (int ) ;

__attribute__((used)) static void nfs_end_page_writeback(struct nfs_page *req)
{
 struct inode *inode = page_file_mapping(req->wb_page)->host;
 struct nfs_server *nfss = NFS_SERVER(inode);
 bool is_done;

 is_done = nfs_page_group_sync_on_bit(req, PG_WB_END);
 nfs_unlock_request(req);
 if (!is_done)
  return;

 end_page_writeback(req->wb_page);
 if (atomic_long_dec_return(&nfss->writeback) < NFS_CONGESTION_OFF_THRESH)
  clear_bdi_congested(inode_to_bdi(inode), BLK_RW_ASYNC);
}
