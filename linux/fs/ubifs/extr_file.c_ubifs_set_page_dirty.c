
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ubifs_info {int dummy; } ;
struct page {TYPE_1__* mapping; } ;
struct inode {TYPE_2__* i_sb; } ;
struct TYPE_4__ {struct ubifs_info* s_fs_info; } ;
struct TYPE_3__ {struct inode* host; } ;


 int __set_page_dirty_nobuffers (struct page*) ;
 int ubifs_assert (struct ubifs_info*,int) ;

__attribute__((used)) static int ubifs_set_page_dirty(struct page *page)
{
 int ret;
 struct inode *inode = page->mapping->host;
 struct ubifs_info *c = inode->i_sb->s_fs_info;

 ret = __set_page_dirty_nobuffers(page);




 ubifs_assert(c, ret == 0);
 return ret;
}
