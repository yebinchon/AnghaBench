
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfs_page {int wb_kref; int wb_flags; int wb_page; struct nfs_page* wb_head; struct nfs_page* wb_this_page; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {int nrequests; } ;
struct TYPE_3__ {struct inode* host; } ;


 TYPE_2__* NFS_I (struct inode*) ;
 int PG_HEADLOCK ;
 int PG_INODE_REF ;
 int WARN_ON_ONCE (int) ;
 int atomic_long_inc (int *) ;
 int kref_get (int *) ;
 TYPE_1__* page_file_mapping (int ) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static inline void
nfs_page_group_init(struct nfs_page *req, struct nfs_page *prev)
{
 struct inode *inode;
 WARN_ON_ONCE(prev == req);

 if (!prev) {

  req->wb_head = req;
  req->wb_this_page = req;
 } else {

  WARN_ON_ONCE(prev->wb_this_page != prev->wb_head);
  WARN_ON_ONCE(!test_bit(PG_HEADLOCK, &prev->wb_head->wb_flags));
  req->wb_head = prev->wb_head;
  req->wb_this_page = prev->wb_this_page;
  prev->wb_this_page = req;



  kref_get(&req->wb_head->wb_kref);




  if (test_bit(PG_INODE_REF, &prev->wb_head->wb_flags)) {
   inode = page_file_mapping(req->wb_page)->host;
   set_bit(PG_INODE_REF, &req->wb_flags);
   kref_get(&req->wb_kref);
   atomic_long_inc(&NFS_I(inode)->nrequests);
  }
 }
}
