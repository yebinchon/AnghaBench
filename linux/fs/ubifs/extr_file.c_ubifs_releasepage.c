
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ubifs_info {int dummy; } ;
struct page {TYPE_1__* mapping; } ;
struct inode {TYPE_2__* i_sb; } ;
typedef int gfp_t ;
struct TYPE_4__ {struct ubifs_info* s_fs_info; } ;
struct TYPE_3__ {struct inode* host; } ;


 int ClearPageChecked (struct page*) ;
 int ClearPagePrivate (struct page*) ;
 int PagePrivate (struct page*) ;
 scalar_t__ PageWriteback (struct page*) ;
 int ubifs_assert (struct ubifs_info*,int ) ;

__attribute__((used)) static int ubifs_releasepage(struct page *page, gfp_t unused_gfp_flags)
{
 struct inode *inode = page->mapping->host;
 struct ubifs_info *c = inode->i_sb->s_fs_info;





 if (PageWriteback(page))
  return 0;
 ubifs_assert(c, PagePrivate(page));
 ubifs_assert(c, 0);
 ClearPagePrivate(page);
 ClearPageChecked(page);
 return 1;
}
