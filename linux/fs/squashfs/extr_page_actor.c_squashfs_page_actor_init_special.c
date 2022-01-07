
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct squashfs_page_actor {int length; int pages; int squashfs_finish_page; int squashfs_next_page; int squashfs_first_page; int * pageaddr; scalar_t__ next_page; struct page** page; } ;
struct page {int dummy; } ;


 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int direct_finish_page ;
 int direct_first_page ;
 int direct_next_page ;
 struct squashfs_page_actor* kmalloc (int,int ) ;

struct squashfs_page_actor *squashfs_page_actor_init_special(struct page **page,
 int pages, int length)
{
 struct squashfs_page_actor *actor = kmalloc(sizeof(*actor), GFP_KERNEL);

 if (actor == ((void*)0))
  return ((void*)0);

 actor->length = length ? : pages * PAGE_SIZE;
 actor->page = page;
 actor->pages = pages;
 actor->next_page = 0;
 actor->pageaddr = ((void*)0);
 actor->squashfs_first_page = direct_first_page;
 actor->squashfs_next_page = direct_next_page;
 actor->squashfs_finish_page = direct_finish_page;
 return actor;
}
