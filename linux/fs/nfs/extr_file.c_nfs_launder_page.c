
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct nfs_inode {int dummy; } ;
struct inode {int i_ino; } ;
struct TYPE_2__ {struct inode* host; } ;


 struct nfs_inode* NFS_I (struct inode*) ;
 int PAGECACHE ;
 int dfprintk (int ,char*,int ,long long) ;
 int nfs_fscache_wait_on_page_write (struct nfs_inode*,struct page*) ;
 int nfs_wb_page (struct inode*,struct page*) ;
 TYPE_1__* page_file_mapping (struct page*) ;
 scalar_t__ page_offset (struct page*) ;

__attribute__((used)) static int nfs_launder_page(struct page *page)
{
 struct inode *inode = page_file_mapping(page)->host;
 struct nfs_inode *nfsi = NFS_I(inode);

 dfprintk(PAGECACHE, "NFS: launder_page(%ld, %llu)\n",
  inode->i_ino, (long long)page_offset(page));

 nfs_fscache_wait_on_page_write(nfsi, page);
 return nfs_wb_page(inode, page);
}
