
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {int dummy; } ;
struct nfs_page {unsigned int wb_bytes; scalar_t__ wb_offset; int wb_kref; int wb_flags; struct nfs_page* wb_this_page; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {int nrequests; } ;
struct TYPE_3__ {struct inode* host; } ;


 int EIO ;
 struct nfs_page* ERR_PTR (int) ;
 TYPE_2__* NFS_I (struct inode*) ;
 int PG_INODE_REF ;
 int PG_REMOVE ;
 scalar_t__ PagePrivate (struct page*) ;
 scalar_t__ PageSwapCache (struct page*) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int atomic_long_inc (int *) ;
 int kref_get (int *) ;
 int kref_get_unless_zero (int *) ;
 int nfs_clear_request_commit (struct nfs_page*) ;
 int nfs_destroy_unlinked_subrequests (struct nfs_page*,struct nfs_page*,struct inode*) ;
 int nfs_lock_request (struct nfs_page*) ;
 struct nfs_page* nfs_page_find_head_request (struct page*) ;
 int nfs_page_group_lock (struct nfs_page*) ;
 int nfs_page_group_unlock (struct nfs_page*) ;
 struct nfs_page* nfs_page_private_request (struct page*) ;
 int nfs_release_request (struct nfs_page*) ;
 int nfs_unlock_and_release_request (struct nfs_page*) ;
 int nfs_unroll_locks (struct inode*,struct nfs_page*,struct nfs_page*) ;
 int nfs_wait_on_request (struct nfs_page*) ;
 TYPE_1__* page_file_mapping (struct page*) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static struct nfs_page *
nfs_lock_and_join_requests(struct page *page)
{
 struct inode *inode = page_file_mapping(page)->host;
 struct nfs_page *head, *subreq;
 struct nfs_page *destroy_list = ((void*)0);
 unsigned int total_bytes;
 int ret;

try_again:





 head = nfs_page_find_head_request(page);
 if (!head)
  return ((void*)0);


 if (!nfs_lock_request(head)) {
  ret = nfs_wait_on_request(head);
  nfs_release_request(head);
  if (ret < 0)
   return ERR_PTR(ret);
  goto try_again;
 }


 if (head != nfs_page_private_request(page) && !PageSwapCache(page)) {
  nfs_unlock_and_release_request(head);
  goto try_again;
 }

 ret = nfs_page_group_lock(head);
 if (ret < 0)
  goto release_request;


 total_bytes = head->wb_bytes;
 for (subreq = head->wb_this_page; subreq != head;
   subreq = subreq->wb_this_page) {

  if (!kref_get_unless_zero(&subreq->wb_kref)) {
   if (subreq->wb_offset == head->wb_offset + total_bytes)
    total_bytes += subreq->wb_bytes;
   continue;
  }

  while (!nfs_lock_request(subreq)) {




   nfs_page_group_unlock(head);
   ret = nfs_wait_on_request(subreq);
   if (!ret)
    ret = nfs_page_group_lock(head);
   if (ret < 0) {
    nfs_unroll_locks(inode, head, subreq);
    nfs_release_request(subreq);
    goto release_request;
   }
  }




  if (subreq->wb_offset == (head->wb_offset + total_bytes)) {

   total_bytes += subreq->wb_bytes;
  } else if (WARN_ON_ONCE(subreq->wb_offset < head->wb_offset ||
       ((subreq->wb_offset + subreq->wb_bytes) >
        (head->wb_offset + total_bytes)))) {
   nfs_page_group_unlock(head);
   nfs_unroll_locks(inode, head, subreq);
   nfs_unlock_and_release_request(subreq);
   ret = -EIO;
   goto release_request;
  }
 }



 subreq = head;
 do {
  nfs_clear_request_commit(subreq);
  subreq = subreq->wb_this_page;
 } while (subreq != head);


 if (head->wb_this_page != head) {

  destroy_list = head->wb_this_page;
  head->wb_this_page = head;



  head->wb_bytes = total_bytes;
 }


 if (test_and_clear_bit(PG_REMOVE, &head->wb_flags)) {
  set_bit(PG_INODE_REF, &head->wb_flags);
  kref_get(&head->wb_kref);
  atomic_long_inc(&NFS_I(inode)->nrequests);
 }

 nfs_page_group_unlock(head);

 nfs_destroy_unlinked_subrequests(destroy_list, head, inode);


 if (!(PagePrivate(page) || PageSwapCache(page))) {
  nfs_unlock_and_release_request(head);
  return ((void*)0);
 }



 return head;

release_request:
 nfs_unlock_and_release_request(head);
 return ERR_PTR(ret);
}
