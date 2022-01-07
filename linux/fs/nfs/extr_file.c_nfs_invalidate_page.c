
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {TYPE_1__* mapping; } ;
struct TYPE_4__ {int host; } ;
struct TYPE_3__ {int host; } ;


 int PAGECACHE ;
 unsigned int PAGE_SIZE ;
 int dfprintk (int ,char*,struct page*,unsigned int,unsigned int) ;
 int nfs_fscache_invalidate_page (struct page*,int ) ;
 int nfs_wb_page_cancel (int ,struct page*) ;
 TYPE_2__* page_file_mapping (struct page*) ;

__attribute__((used)) static void nfs_invalidate_page(struct page *page, unsigned int offset,
    unsigned int length)
{
 dfprintk(PAGECACHE, "NFS: invalidate_page(%p, %u, %u)\n",
   page, offset, length);

 if (offset != 0 || length < PAGE_SIZE)
  return;

 nfs_wb_page_cancel(page_file_mapping(page)->host, page);

 nfs_fscache_invalidate_page(page, page->mapping->host);
}
