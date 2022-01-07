
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_page {struct nfs_page* wb_this_page; int wb_flags; struct nfs_page* wb_head; } ;


 unsigned int PG_HEADLOCK ;
 int WARN_ON_ONCE (int) ;
 int clear_bit (unsigned int,int *) ;
 int test_and_set_bit (unsigned int,int *) ;
 int test_bit (unsigned int,int *) ;

__attribute__((used)) static bool
nfs_page_group_sync_on_bit_locked(struct nfs_page *req, unsigned int bit)
{
 struct nfs_page *head = req->wb_head;
 struct nfs_page *tmp;

 WARN_ON_ONCE(!test_bit(PG_HEADLOCK, &head->wb_flags));
 WARN_ON_ONCE(test_and_set_bit(bit, &req->wb_flags));

 tmp = req->wb_this_page;
 while (tmp != req) {
  if (!test_bit(bit, &tmp->wb_flags))
   return 0;
  tmp = tmp->wb_this_page;
 }


 tmp = req;
 do {
  clear_bit(bit, &tmp->wb_flags);
  tmp = tmp->wb_this_page;
 } while (tmp != req);

 return 1;
}
