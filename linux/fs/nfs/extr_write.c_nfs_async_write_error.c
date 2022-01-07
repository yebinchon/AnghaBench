
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_page {int dummy; } ;
struct list_head {int next; } ;


 int list_empty (struct list_head*) ;
 scalar_t__ nfs_error_is_fatal (int) ;
 struct nfs_page* nfs_list_entry (int ) ;
 int nfs_list_remove_request (struct nfs_page*) ;
 int nfs_redirty_request (struct nfs_page*) ;
 int nfs_write_error (struct nfs_page*,int) ;

__attribute__((used)) static void nfs_async_write_error(struct list_head *head, int error)
{
 struct nfs_page *req;

 while (!list_empty(head)) {
  req = nfs_list_entry(head->next);
  nfs_list_remove_request(req);
  if (nfs_error_is_fatal(error))
   nfs_write_error(req, error);
  else
   nfs_redirty_request(req);
 }
}
