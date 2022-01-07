
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct squashfs_page_actor {int length; void** page; int pages; scalar_t__ next_page; } ;


 int GFP_KERNEL ;
 int PAGE_SIZE ;
 struct squashfs_page_actor* kmalloc (int,int ) ;

__attribute__((used)) static inline struct squashfs_page_actor *squashfs_page_actor_init(void **page,
 int pages, int length)
{
 struct squashfs_page_actor *actor = kmalloc(sizeof(*actor), GFP_KERNEL);

 if (actor == ((void*)0))
  return ((void*)0);

 actor->length = length ? : pages * PAGE_SIZE;
 actor->page = page;
 actor->pages = pages;
 actor->next_page = 0;
 return actor;
}
