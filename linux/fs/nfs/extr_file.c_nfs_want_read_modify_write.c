
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct file {int f_mode; TYPE_1__* f_mapping; } ;
typedef int loff_t ;
struct TYPE_2__ {int host; } ;


 int FMODE_READ ;
 scalar_t__ PagePrivate (struct page*) ;
 scalar_t__ PageUptodate (struct page*) ;
 scalar_t__ nfs_full_page_write (struct page*,int ,unsigned int) ;
 scalar_t__ pnfs_ld_read_whole_page (int ) ;

__attribute__((used)) static bool nfs_want_read_modify_write(struct file *file, struct page *page,
   loff_t pos, unsigned int len)
{




 if (PageUptodate(page) || PagePrivate(page) ||
     nfs_full_page_write(page, pos, len))
  return 0;

 if (pnfs_ld_read_whole_page(file->f_mapping->host))
  return 1;

 if (file->f_mode & FMODE_READ)
  return 1;
 return 0;
}
