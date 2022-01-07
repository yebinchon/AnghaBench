
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_page {int wb_flags; scalar_t__ wb_page; struct nfs_page* wb_head; } ;
struct nfs_inode {int nrequests; } ;
struct inode {int dummy; } ;
struct address_space {int private_lock; struct inode* host; } ;


 int ClearPagePrivate (scalar_t__) ;
 struct nfs_inode* NFS_I (struct inode*) ;
 int PG_INODE_REF ;
 int PG_MAPPED ;
 int PG_REMOVE ;
 int PageSwapCache (scalar_t__) ;
 int atomic_long_dec (int *) ;
 int clear_bit (int ,int *) ;
 scalar_t__ likely (int) ;
 scalar_t__ nfs_page_group_sync_on_bit (struct nfs_page*,int ) ;
 int nfs_release_request (struct nfs_page*) ;
 struct address_space* page_file_mapping (scalar_t__) ;
 int set_page_private (scalar_t__,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void nfs_inode_remove_request(struct nfs_page *req)
{
 struct address_space *mapping = page_file_mapping(req->wb_page);
 struct inode *inode = mapping->host;
 struct nfs_inode *nfsi = NFS_I(inode);
 struct nfs_page *head;

 if (nfs_page_group_sync_on_bit(req, PG_REMOVE)) {
  head = req->wb_head;

  spin_lock(&mapping->private_lock);
  if (likely(head->wb_page && !PageSwapCache(head->wb_page))) {
   set_page_private(head->wb_page, 0);
   ClearPagePrivate(head->wb_page);
   clear_bit(PG_MAPPED, &head->wb_flags);
  }
  spin_unlock(&mapping->private_lock);
 }

 if (test_and_clear_bit(PG_INODE_REF, &req->wb_flags)) {
  nfs_release_request(req);
  atomic_long_dec(&nfsi->nrequests);
 }
}
