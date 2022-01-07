
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_page {scalar_t__ wb_page; } ;


 int __set_page_dirty_nobuffers (scalar_t__) ;

__attribute__((used)) static void
nfs_mark_request_dirty(struct nfs_page *req)
{
 if (req->wb_page)
  __set_page_dirty_nobuffers(req->wb_page);
}
