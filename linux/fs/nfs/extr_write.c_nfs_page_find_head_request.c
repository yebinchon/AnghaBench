
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct nfs_page {int dummy; } ;


 struct nfs_page* nfs_page_find_private_request (struct page*) ;
 struct nfs_page* nfs_page_find_swap_request (struct page*) ;

__attribute__((used)) static struct nfs_page *nfs_page_find_head_request(struct page *page)
{
 struct nfs_page *req;

 req = nfs_page_find_private_request(page);
 if (!req)
  req = nfs_page_find_swap_request(page);
 return req;
}
