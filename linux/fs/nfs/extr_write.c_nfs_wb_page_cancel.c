
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct nfs_page {int dummy; } ;
struct inode {int dummy; } ;


 scalar_t__ IS_ERR (struct nfs_page*) ;
 int PTR_ERR (struct nfs_page*) ;
 int nfs_inode_remove_request (struct nfs_page*) ;
 struct nfs_page* nfs_lock_and_join_requests (struct page*) ;
 int nfs_unlock_and_release_request (struct nfs_page*) ;
 int wait_on_page_writeback (struct page*) ;

int nfs_wb_page_cancel(struct inode *inode, struct page *page)
{
 struct nfs_page *req;
 int ret = 0;

 wait_on_page_writeback(page);



 req = nfs_lock_and_join_requests(page);

 if (IS_ERR(req)) {
  ret = PTR_ERR(req);
 } else if (req) {




  nfs_inode_remove_request(req);
  nfs_unlock_and_release_request(req);
 }

 return ret;
}
