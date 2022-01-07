
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct nfs_server {int writeback; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {struct inode* host; } ;


 int BLK_RW_ASYNC ;
 scalar_t__ NFS_CONGESTION_ON_THRESH ;
 struct nfs_server* NFS_SERVER (struct inode*) ;
 int WARN_ON_ONCE (int) ;
 scalar_t__ atomic_long_inc_return (int *) ;
 int inode_to_bdi (struct inode*) ;
 TYPE_1__* page_file_mapping (struct page*) ;
 int set_bdi_congested (int ,int ) ;
 int test_set_page_writeback (struct page*) ;

__attribute__((used)) static void nfs_set_page_writeback(struct page *page)
{
 struct inode *inode = page_file_mapping(page)->host;
 struct nfs_server *nfss = NFS_SERVER(inode);
 int ret = test_set_page_writeback(page);

 WARN_ON_ONCE(ret != 0);

 if (atomic_long_inc_return(&nfss->writeback) >
   NFS_CONGESTION_ON_THRESH)
  set_bdi_congested(inode_to_bdi(inode), BLK_RW_ASYNC);
}
