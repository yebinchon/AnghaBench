
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct file_ra_state {int ra_pages; } ;
struct file {int dummy; } ;
struct address_space {int host; } ;
typedef int pgoff_t ;


 int ClearPageReadahead (struct page*) ;
 scalar_t__ PageWriteback (struct page*) ;
 scalar_t__ blk_cgroup_congested () ;
 scalar_t__ inode_read_congested (int ) ;
 int ondemand_readahead (struct address_space*,struct file_ra_state*,struct file*,int,int ,unsigned long) ;

void
page_cache_async_readahead(struct address_space *mapping,
      struct file_ra_state *ra, struct file *filp,
      struct page *page, pgoff_t offset,
      unsigned long req_size)
{

 if (!ra->ra_pages)
  return;




 if (PageWriteback(page))
  return;

 ClearPageReadahead(page);




 if (inode_read_congested(mapping->host))
  return;

 if (blk_cgroup_congested())
  return;


 ondemand_readahead(mapping, ra, filp, 1, offset, req_size);
}
