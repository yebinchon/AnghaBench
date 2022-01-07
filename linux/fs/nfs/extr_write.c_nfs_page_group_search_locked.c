
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_page {unsigned int wb_pgbase; unsigned int wb_bytes; struct nfs_page* wb_this_page; } ;



__attribute__((used)) static struct nfs_page *
nfs_page_group_search_locked(struct nfs_page *head, unsigned int page_offset)
{
 struct nfs_page *req;

 req = head;
 do {
  if (page_offset >= req->wb_pgbase &&
      page_offset < (req->wb_pgbase + req->wb_bytes))
   return req;

  req = req->wb_this_page;
 } while (req != head);

 return ((void*)0);
}
