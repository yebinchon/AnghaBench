
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct nfs_readdesc {TYPE_1__* pgio; int ctx; } ;
struct nfs_page {int dummy; } ;
struct TYPE_2__ {int pg_error; } ;


 scalar_t__ IS_ERR (struct nfs_page*) ;
 unsigned int PAGE_SIZE ;
 int PTR_ERR (struct nfs_page*) ;
 struct nfs_page* nfs_create_request (int ,struct page*,int ,unsigned int) ;
 int nfs_list_remove_request (struct nfs_page*) ;
 unsigned int nfs_page_length (struct page*) ;
 int nfs_pageio_add_request (TYPE_1__*,struct nfs_page*) ;
 int nfs_readpage_release (struct nfs_page*,int) ;
 int nfs_return_empty_page (struct page*) ;
 int unlock_page (struct page*) ;
 int zero_user_segment (struct page*,unsigned int,unsigned int) ;

__attribute__((used)) static int
readpage_async_filler(void *data, struct page *page)
{
 struct nfs_readdesc *desc = (struct nfs_readdesc *)data;
 struct nfs_page *new;
 unsigned int len;
 int error;

 len = nfs_page_length(page);
 if (len == 0)
  return nfs_return_empty_page(page);

 new = nfs_create_request(desc->ctx, page, 0, len);
 if (IS_ERR(new))
  goto out_error;

 if (len < PAGE_SIZE)
  zero_user_segment(page, len, PAGE_SIZE);
 if (!nfs_pageio_add_request(desc->pgio, new)) {
  nfs_list_remove_request(new);
  error = desc->pgio->pg_error;
  nfs_readpage_release(new, error);
  goto out;
 }
 return 0;
out_error:
 error = PTR_ERR(new);
 unlock_page(page);
out:
 return error;
}
