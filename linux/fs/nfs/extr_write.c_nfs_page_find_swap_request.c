
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct nfs_page {int wb_kref; struct nfs_page* wb_head; } ;
struct nfs_inode {int commit_mutex; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {struct inode* host; } ;


 struct nfs_inode* NFS_I (struct inode*) ;
 scalar_t__ PageSwapCache (struct page*) ;
 int WARN_ON_ONCE (int) ;
 int kref_get (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct nfs_page* nfs_page_search_commits_for_head_request_locked (struct nfs_inode*,struct page*) ;
 TYPE_1__* page_file_mapping (struct page*) ;

__attribute__((used)) static struct nfs_page *
nfs_page_find_swap_request(struct page *page)
{
 struct inode *inode = page_file_mapping(page)->host;
 struct nfs_inode *nfsi = NFS_I(inode);
 struct nfs_page *req = ((void*)0);
 if (!PageSwapCache(page))
  return ((void*)0);
 mutex_lock(&nfsi->commit_mutex);
 if (PageSwapCache(page)) {
  req = nfs_page_search_commits_for_head_request_locked(nfsi,
   page);
  if (req) {
   WARN_ON_ONCE(req->wb_head != req);
   kref_get(&req->wb_kref);
  }
 }
 mutex_unlock(&nfsi->commit_mutex);
 return req;
}
