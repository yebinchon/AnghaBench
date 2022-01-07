
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_page {int wb_kref; int wb_flags; int wb_page; struct nfs_page* wb_this_page; } ;
struct nfs_inode {int nrequests; } ;
struct inode {int dummy; } ;
struct address_space {int private_lock; } ;
struct TYPE_2__ {scalar_t__ (* have_delegation ) (struct inode*,int ) ;} ;


 int FMODE_WRITE ;
 struct nfs_inode* NFS_I (struct inode*) ;
 TYPE_1__* NFS_PROTO (struct inode*) ;
 int PG_INODE_REF ;
 int PG_MAPPED ;
 int PageSwapCache (int ) ;
 int SetPagePrivate (int ) ;
 int WARN_ON (int ) ;
 int WARN_ON_ONCE (int) ;
 int atomic_long_inc (int *) ;
 int inode_inc_iversion_raw (struct inode*) ;
 int kref_get (int *) ;
 scalar_t__ likely (int) ;
 int nfs_have_writebacks (struct inode*) ;
 int nfs_lock_request (struct nfs_page*) ;
 struct address_space* page_file_mapping (int ) ;
 int set_bit (int ,int *) ;
 int set_page_private (int ,unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ stub1 (struct inode*,int ) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void nfs_inode_add_request(struct inode *inode, struct nfs_page *req)
{
 struct address_space *mapping = page_file_mapping(req->wb_page);
 struct nfs_inode *nfsi = NFS_I(inode);

 WARN_ON_ONCE(req->wb_this_page != req);


 nfs_lock_request(req);





 spin_lock(&mapping->private_lock);
 if (!nfs_have_writebacks(inode) &&
     NFS_PROTO(inode)->have_delegation(inode, FMODE_WRITE))
  inode_inc_iversion_raw(inode);
 if (likely(!PageSwapCache(req->wb_page))) {
  set_bit(PG_MAPPED, &req->wb_flags);
  SetPagePrivate(req->wb_page);
  set_page_private(req->wb_page, (unsigned long)req);
 }
 spin_unlock(&mapping->private_lock);
 atomic_long_inc(&nfsi->nrequests);




 WARN_ON(test_and_set_bit(PG_INODE_REF, &req->wb_flags));
 kref_get(&req->wb_kref);
}
