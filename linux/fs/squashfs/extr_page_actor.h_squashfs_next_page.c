
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct squashfs_page_actor {scalar_t__ next_page; scalar_t__ pages; void** page; } ;



__attribute__((used)) static inline void *squashfs_next_page(struct squashfs_page_actor *actor)
{
 return actor->next_page == actor->pages ? ((void*)0) :
  actor->page[actor->next_page++];
}
