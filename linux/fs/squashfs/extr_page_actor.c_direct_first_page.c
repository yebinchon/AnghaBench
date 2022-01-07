
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct squashfs_page_actor {int next_page; void* pageaddr; int * page; } ;


 void* kmap_atomic (int ) ;

__attribute__((used)) static void *direct_first_page(struct squashfs_page_actor *actor)
{
 actor->next_page = 1;
 return actor->pageaddr = kmap_atomic(actor->page[0]);
}
