
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct squashfs_page_actor {scalar_t__ next_page; scalar_t__ pages; void** buffer; } ;



__attribute__((used)) static void *cache_next_page(struct squashfs_page_actor *actor)
{
 if (actor->next_page == actor->pages)
  return ((void*)0);

 return actor->buffer[actor->next_page++];
}
