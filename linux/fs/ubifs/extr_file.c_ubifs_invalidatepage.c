
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ubifs_info {int dirty_pg_cnt; } ;
struct page {TYPE_1__* mapping; } ;
struct inode {TYPE_2__* i_sb; } ;
struct TYPE_4__ {struct ubifs_info* s_fs_info; } ;
struct TYPE_3__ {struct inode* host; } ;


 int ClearPageChecked (struct page*) ;
 int ClearPagePrivate (struct page*) ;
 unsigned int PAGE_SIZE ;
 scalar_t__ PageChecked (struct page*) ;
 int PagePrivate (struct page*) ;
 int atomic_long_dec (int *) ;
 int release_existing_page_budget (struct ubifs_info*) ;
 int release_new_page_budget (struct ubifs_info*) ;
 int ubifs_assert (struct ubifs_info*,int ) ;

__attribute__((used)) static void ubifs_invalidatepage(struct page *page, unsigned int offset,
     unsigned int length)
{
 struct inode *inode = page->mapping->host;
 struct ubifs_info *c = inode->i_sb->s_fs_info;

 ubifs_assert(c, PagePrivate(page));
 if (offset || length < PAGE_SIZE)

  return;

 if (PageChecked(page))
  release_new_page_budget(c);
 else
  release_existing_page_budget(c);

 atomic_long_dec(&c->dirty_pg_cnt);
 ClearPagePrivate(page);
 ClearPageChecked(page);
}
