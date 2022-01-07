
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct address_space {int dummy; } ;
typedef int pgoff_t ;


 unsigned int AOP_FLAG_NOFS ;
 int FGP_CREAT ;
 int FGP_LOCK ;
 int FGP_NOFS ;
 int FGP_WRITE ;
 int mapping_gfp_mask (struct address_space*) ;
 struct page* pagecache_get_page (struct address_space*,int ,int,int ) ;
 int wait_for_stable_page (struct page*) ;

struct page *grab_cache_page_write_begin(struct address_space *mapping,
     pgoff_t index, unsigned flags)
{
 struct page *page;
 int fgp_flags = FGP_LOCK|FGP_WRITE|FGP_CREAT;

 if (flags & AOP_FLAG_NOFS)
  fgp_flags |= FGP_NOFS;

 page = pagecache_get_page(mapping, index, fgp_flags,
   mapping_gfp_mask(mapping));
 if (page)
  wait_for_stable_page(page);

 return page;
}
