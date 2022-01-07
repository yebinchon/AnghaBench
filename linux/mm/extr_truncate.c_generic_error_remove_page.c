
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct address_space {TYPE_1__* host; } ;
struct TYPE_2__ {int i_mode; } ;


 int EINVAL ;
 int EIO ;
 int S_ISREG (int ) ;
 int truncate_inode_page (struct address_space*,struct page*) ;

int generic_error_remove_page(struct address_space *mapping, struct page *page)
{
 if (!mapping)
  return -EINVAL;




 if (!S_ISREG(mapping->host->i_mode))
  return -EIO;
 return truncate_inode_page(mapping, page);
}
