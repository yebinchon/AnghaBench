
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_page {int wb_page; } ;


 scalar_t__ PageUptodate (int ) ;
 int SetPageUptodate (int ) ;
 int nfs_page_group_covers_page (struct nfs_page*) ;

__attribute__((used)) static void nfs_mark_uptodate(struct nfs_page *req)
{
 if (PageUptodate(req->wb_page))
  return;
 if (!nfs_page_group_covers_page(req))
  return;
 SetPageUptodate(req->wb_page);
}
