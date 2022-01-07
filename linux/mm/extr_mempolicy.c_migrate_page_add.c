
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct list_head {int dummy; } ;


 int EIO ;

__attribute__((used)) static int migrate_page_add(struct page *page, struct list_head *pagelist,
    unsigned long flags)
{
 return -EIO;
}
