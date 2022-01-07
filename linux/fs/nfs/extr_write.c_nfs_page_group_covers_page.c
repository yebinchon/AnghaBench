
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_page {unsigned int wb_pgbase; unsigned int wb_bytes; int wb_head; int wb_page; } ;


 int nfs_page_group_lock (struct nfs_page*) ;
 struct nfs_page* nfs_page_group_search_locked (int ,unsigned int) ;
 int nfs_page_group_unlock (struct nfs_page*) ;
 unsigned int nfs_page_length (int ) ;

__attribute__((used)) static bool nfs_page_group_covers_page(struct nfs_page *req)
{
 struct nfs_page *tmp;
 unsigned int pos = 0;
 unsigned int len = nfs_page_length(req->wb_page);

 nfs_page_group_lock(req);

 for (;;) {
  tmp = nfs_page_group_search_locked(req->wb_head, pos);
  if (!tmp)
   break;
  pos = tmp->wb_pgbase + tmp->wb_bytes;
 }

 nfs_page_group_unlock(req);
 return pos >= len;
}
