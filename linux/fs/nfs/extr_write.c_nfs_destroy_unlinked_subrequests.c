
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_page {int wb_flags; struct nfs_page* wb_head; int wb_kref; struct nfs_page* wb_this_page; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int nrequests; } ;


 TYPE_1__* NFS_I (struct inode*) ;
 int PG_INODE_REF ;
 int PG_REMOVE ;
 int PG_TEARDOWN ;
 int WARN_ON_ONCE (int) ;
 int atomic_long_dec (int *) ;
 int clear_bit (int ,int *) ;
 int kref_read (int *) ;
 int nfs_free_request (struct nfs_page*) ;
 int nfs_release_request (struct nfs_page*) ;
 int nfs_unlock_and_release_request (struct nfs_page*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void
nfs_destroy_unlinked_subrequests(struct nfs_page *destroy_list,
     struct nfs_page *old_head,
     struct inode *inode)
{
 while (destroy_list) {
  struct nfs_page *subreq = destroy_list;

  destroy_list = (subreq->wb_this_page == old_head) ?
       ((void*)0) : subreq->wb_this_page;

  WARN_ON_ONCE(old_head != subreq->wb_head);


  subreq->wb_this_page = subreq;

  clear_bit(PG_REMOVE, &subreq->wb_flags);


  if (!kref_read(&subreq->wb_kref)) {

   if (test_and_clear_bit(PG_TEARDOWN, &subreq->wb_flags))
    nfs_free_request(subreq);
   continue;
  }

  subreq->wb_head = subreq;

  if (test_and_clear_bit(PG_INODE_REF, &subreq->wb_flags)) {
   nfs_release_request(subreq);
   atomic_long_dec(&NFS_I(inode)->nrequests);
  }



  nfs_unlock_and_release_request(subreq);
 }
}
