
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct squashfs_page_actor {void* pageaddr; scalar_t__ next_page; scalar_t__ pages; int * page; } ;


 int * kmap_atomic (int ) ;
 int kunmap_atomic (void*) ;

__attribute__((used)) static void *direct_next_page(struct squashfs_page_actor *actor)
{
 if (actor->pageaddr)
  kunmap_atomic(actor->pageaddr);

 return actor->pageaddr = actor->next_page == actor->pages ? ((void*)0) :
  kmap_atomic(actor->page[actor->next_page++]);
}
