
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_page {int wb_kref; struct nfs_page* wb_this_page; } ;
struct inode {int dummy; } ;


 int kref_read (int *) ;
 int nfs_unlock_and_release_request (struct nfs_page*) ;

__attribute__((used)) static void
nfs_unroll_locks(struct inode *inode, struct nfs_page *head,
     struct nfs_page *req)
{
 struct nfs_page *tmp;


 for (tmp = head->wb_this_page ; tmp != req; tmp = tmp->wb_this_page) {
  if (!kref_read(&tmp->wb_kref))
   continue;
  nfs_unlock_and_release_request(tmp);
 }
}
