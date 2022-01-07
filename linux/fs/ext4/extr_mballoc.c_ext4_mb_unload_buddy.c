
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_buddy {scalar_t__ bd_buddy_page; scalar_t__ bd_bitmap_page; } ;


 int put_page (scalar_t__) ;

__attribute__((used)) static void ext4_mb_unload_buddy(struct ext4_buddy *e4b)
{
 if (e4b->bd_bitmap_page)
  put_page(e4b->bd_bitmap_page);
 if (e4b->bd_buddy_page)
  put_page(e4b->bd_buddy_page);
}
