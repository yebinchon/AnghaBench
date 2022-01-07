
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct squashfs_page_actor {scalar_t__ pageaddr; } ;


 int kunmap_atomic (scalar_t__) ;

__attribute__((used)) static void direct_finish_page(struct squashfs_page_actor *actor)
{
 if (actor->pageaddr)
  kunmap_atomic(actor->pageaddr);
}
