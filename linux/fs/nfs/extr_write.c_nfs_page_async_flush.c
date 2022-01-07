
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct nfs_pageio_descriptor {int pg_error; } ;
struct nfs_page {int wb_flags; } ;
struct TYPE_2__ {int host; } ;


 int EAGAIN ;
 scalar_t__ IS_ERR (struct nfs_page*) ;
 int NFSIOS_WRITEPAGES ;
 int PG_CLEAN ;
 int PTR_ERR (struct nfs_page*) ;
 int WARN_ON_ONCE (int ) ;
 int nfs_add_stats (int ,int ,int) ;
 scalar_t__ nfs_error_is_fatal (int) ;
 scalar_t__ nfs_error_is_fatal_on_server (int) ;
 struct nfs_page* nfs_lock_and_join_requests (struct page*) ;
 int nfs_pageio_add_request (struct nfs_pageio_descriptor*,struct nfs_page*) ;
 int nfs_redirty_request (struct nfs_page*) ;
 int nfs_set_page_writeback (struct page*) ;
 int nfs_write_error (struct nfs_page*,int) ;
 TYPE_1__* page_file_mapping (struct page*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int nfs_page_async_flush(struct nfs_pageio_descriptor *pgio,
    struct page *page)
{
 struct nfs_page *req;
 int ret = 0;

 req = nfs_lock_and_join_requests(page);
 if (!req)
  goto out;
 ret = PTR_ERR(req);
 if (IS_ERR(req))
  goto out;

 nfs_set_page_writeback(page);
 WARN_ON_ONCE(test_bit(PG_CLEAN, &req->wb_flags));


 ret = pgio->pg_error;
 if (nfs_error_is_fatal_on_server(ret))
  goto out_launder;

 ret = 0;
 if (!nfs_pageio_add_request(pgio, req)) {
  ret = pgio->pg_error;



  if (nfs_error_is_fatal(ret)) {
   if (nfs_error_is_fatal_on_server(ret))
    goto out_launder;
  } else
   ret = -EAGAIN;
  nfs_redirty_request(req);
  pgio->pg_error = 0;
 } else
  nfs_add_stats(page_file_mapping(page)->host,
    NFSIOS_WRITEPAGES, 1);
out:
 return ret;
out_launder:
 nfs_write_error(req, ret);
 return 0;
}
