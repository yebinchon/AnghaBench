
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct nfs_pgio_mirror {scalar_t__ pg_bytes_written; } ;
struct nfs_pageio_descriptor {scalar_t__ pg_error; int pg_mirror_count; struct nfs_pgio_mirror* pg_mirrors; } ;
struct nfs_page {int dummy; } ;
struct nfs_open_context {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int read_io; } ;


 scalar_t__ IS_ERR (struct nfs_page*) ;
 TYPE_1__* NFS_I (struct inode*) ;
 unsigned int PAGE_SIZE ;
 int PTR_ERR (struct nfs_page*) ;
 int WARN_ON_ONCE (int) ;
 int nfs_async_read_completion_ops ;
 struct nfs_page* nfs_create_request (struct nfs_open_context*,struct page*,int ,unsigned int) ;
 int nfs_list_remove_request (struct nfs_page*) ;
 unsigned int nfs_page_length (struct page*) ;
 int nfs_pageio_add_request (struct nfs_pageio_descriptor*,struct nfs_page*) ;
 int nfs_pageio_complete (struct nfs_pageio_descriptor*) ;
 int nfs_pageio_init_read (struct nfs_pageio_descriptor*,struct inode*,int,int *) ;
 int nfs_readpage_release (struct nfs_page*,scalar_t__) ;
 int nfs_return_empty_page (struct page*) ;
 int unlock_page (struct page*) ;
 int zero_user_segment (struct page*,unsigned int,unsigned int) ;

int nfs_readpage_async(struct nfs_open_context *ctx, struct inode *inode,
         struct page *page)
{
 struct nfs_page *new;
 unsigned int len;
 struct nfs_pageio_descriptor pgio;
 struct nfs_pgio_mirror *pgm;

 len = nfs_page_length(page);
 if (len == 0)
  return nfs_return_empty_page(page);
 new = nfs_create_request(ctx, page, 0, len);
 if (IS_ERR(new)) {
  unlock_page(page);
  return PTR_ERR(new);
 }
 if (len < PAGE_SIZE)
  zero_user_segment(page, len, PAGE_SIZE);

 nfs_pageio_init_read(&pgio, inode, 0,
        &nfs_async_read_completion_ops);
 if (!nfs_pageio_add_request(&pgio, new)) {
  nfs_list_remove_request(new);
  nfs_readpage_release(new, pgio.pg_error);
 }
 nfs_pageio_complete(&pgio);


 WARN_ON_ONCE(pgio.pg_mirror_count != 1);

 pgm = &pgio.pg_mirrors[0];
 NFS_I(inode)->read_io += pgm->pg_bytes_written;

 return pgio.pg_error < 0 ? pgio.pg_error : 0;
}
