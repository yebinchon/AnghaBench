
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct nfs_page {int wb_kref; struct nfs_page* wb_head; } ;
struct address_space {int private_lock; } ;


 int PagePrivate (struct page*) ;
 int WARN_ON_ONCE (int) ;
 int kref_get (int *) ;
 struct nfs_page* nfs_page_private_request (struct page*) ;
 struct address_space* page_file_mapping (struct page*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct nfs_page *
nfs_page_find_private_request(struct page *page)
{
 struct address_space *mapping = page_file_mapping(page);
 struct nfs_page *req;

 if (!PagePrivate(page))
  return ((void*)0);
 spin_lock(&mapping->private_lock);
 req = nfs_page_private_request(page);
 if (req) {
  WARN_ON_ONCE(req->wb_head != req);
  kref_get(&req->wb_kref);
 }
 spin_unlock(&mapping->private_lock);
 return req;
}
