
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_page {int wb_flags; struct nfs_page* wb_this_page; } ;


 int PG_REMOVE ;
 int PG_TEARDOWN ;
 int PG_UNLOCKPAGE ;
 int PG_UPTODATE ;
 int PG_WB_END ;
 int WARN_ON_ONCE (int) ;
 int nfs_clear_request (struct nfs_page*) ;
 int nfs_page_free (struct nfs_page*) ;
 int test_bit (int ,int *) ;

void nfs_free_request(struct nfs_page *req)
{
 WARN_ON_ONCE(req->wb_this_page != req);


 WARN_ON_ONCE(test_bit(PG_TEARDOWN, &req->wb_flags));
 WARN_ON_ONCE(test_bit(PG_UNLOCKPAGE, &req->wb_flags));
 WARN_ON_ONCE(test_bit(PG_UPTODATE, &req->wb_flags));
 WARN_ON_ONCE(test_bit(PG_WB_END, &req->wb_flags));
 WARN_ON_ONCE(test_bit(PG_REMOVE, &req->wb_flags));


 nfs_clear_request(req);
 nfs_page_free(req);
}
