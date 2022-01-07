
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct squashfs_page_actor {int next_page; void** page; } ;



__attribute__((used)) static inline void *squashfs_first_page(struct squashfs_page_actor *actor)
{
 actor->next_page = 1;
 return actor->page[0];
}
