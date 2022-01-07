
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct squashfs_page_actor {int length; void** buffer; int pages; int squashfs_finish_page; int squashfs_next_page; int squashfs_first_page; scalar_t__ next_page; } ;


 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int cache_finish_page ;
 int cache_first_page ;
 int cache_next_page ;
 struct squashfs_page_actor* kmalloc (int,int ) ;

struct squashfs_page_actor *squashfs_page_actor_init(void **buffer,
 int pages, int length)
{
 struct squashfs_page_actor *actor = kmalloc(sizeof(*actor), GFP_KERNEL);

 if (actor == ((void*)0))
  return ((void*)0);

 actor->length = length ? : pages * PAGE_SIZE;
 actor->buffer = buffer;
 actor->pages = pages;
 actor->next_page = 0;
 actor->squashfs_first_page = cache_first_page;
 actor->squashfs_next_page = cache_next_page;
 actor->squashfs_finish_page = cache_finish_page;
 return actor;
}
