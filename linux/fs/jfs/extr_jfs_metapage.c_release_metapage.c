
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct metapage {scalar_t__ lsn; int sb; int flag; scalar_t__ nohomeok; scalar_t__ count; struct page* page; } ;


 int BUG_ON (int) ;
 int META_dirty ;
 int META_sync ;
 int assert (scalar_t__) ;
 int clear_bit (int ,int *) ;
 int drop_metapage (struct page*,struct metapage*) ;
 int jfs_error (int ,char*) ;
 int jfs_info (char*,struct metapage*,int ) ;
 int lock_page (struct page*) ;
 int put_page (struct page*) ;
 int remove_from_logsync (struct metapage*) ;
 int set_page_dirty (struct page*) ;
 scalar_t__ test_bit (int ,int *) ;
 int unlock_metapage (struct metapage*) ;
 int unlock_page (struct page*) ;
 scalar_t__ write_one_page (struct page*) ;

void release_metapage(struct metapage * mp)
{
 struct page *page = mp->page;
 jfs_info("release_metapage: mp = 0x%p, flag = 0x%lx", mp, mp->flag);

 BUG_ON(!page);

 lock_page(page);
 unlock_metapage(mp);

 assert(mp->count);
 if (--mp->count || mp->nohomeok) {
  unlock_page(page);
  put_page(page);
  return;
 }

 if (test_bit(META_dirty, &mp->flag)) {
  set_page_dirty(page);
  if (test_bit(META_sync, &mp->flag)) {
   clear_bit(META_sync, &mp->flag);
   if (write_one_page(page))
    jfs_error(mp->sb, "write_one_page() failed\n");
   lock_page(page);
  }
 } else if (mp->lsn)
  remove_from_logsync(mp);


 drop_metapage(page, mp);

 unlock_page(page);
 put_page(page);
}
