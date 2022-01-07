
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct nfs_page {int dummy; } ;


 int PagePrivate (struct page*) ;
 scalar_t__ page_private (struct page*) ;

__attribute__((used)) static struct nfs_page *
nfs_page_private_request(struct page *page)
{
 if (!PagePrivate(page))
  return ((void*)0);
 return (struct nfs_page *)page_private(page);
}
