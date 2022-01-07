
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_page {int wb_page; } ;


 int PG_UPTODATE ;
 int SetPageUptodate (int ) ;
 scalar_t__ nfs_page_group_sync_on_bit (struct nfs_page*,int ) ;

__attribute__((used)) static void nfs_page_group_set_uptodate(struct nfs_page *req)
{
 if (nfs_page_group_sync_on_bit(req, PG_UPTODATE))
  SetPageUptodate(req->wb_page);
}
