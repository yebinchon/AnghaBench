
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct metapage {int flag; int sb; struct page* page; } ;


 int META_forcewrite ;
 int META_sync ;
 int clear_bit (int ,int *) ;
 int get_page (struct page*) ;
 int jfs_error (int ,char*) ;
 int jfs_info (char*,struct metapage*) ;
 int lock_page (struct page*) ;
 int put_page (struct page*) ;
 int set_bit (int ,int *) ;
 int set_page_dirty (struct page*) ;
 scalar_t__ write_one_page (struct page*) ;

void force_metapage(struct metapage *mp)
{
 struct page *page = mp->page;
 jfs_info("force_metapage: mp = 0x%p", mp);
 set_bit(META_forcewrite, &mp->flag);
 clear_bit(META_sync, &mp->flag);
 get_page(page);
 lock_page(page);
 set_page_dirty(page);
 if (write_one_page(page))
  jfs_error(mp->sb, "write_one_page() failed\n");
 clear_bit(META_forcewrite, &mp->flag);
 put_page(page);
}
