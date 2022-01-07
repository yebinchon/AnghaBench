
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct mdev_state {struct page** pages; int ops_lock; } ;
typedef size_t pgoff_t ;


 int GFP_HIGHUSER ;
 int WARN_ON (int) ;
 int __GFP_ZERO ;
 struct page* alloc_pages (int,int ) ;
 int get_page (struct page*) ;
 int mutex_is_locked (int *) ;

__attribute__((used)) static struct page *__mbochs_get_page(struct mdev_state *mdev_state,
          pgoff_t pgoff)
{
 WARN_ON(!mutex_is_locked(&mdev_state->ops_lock));

 if (!mdev_state->pages[pgoff]) {
  mdev_state->pages[pgoff] =
   alloc_pages(GFP_HIGHUSER | __GFP_ZERO, 0);
  if (!mdev_state->pages[pgoff])
   return ((void*)0);
 }

 get_page(mdev_state->pages[pgoff]);
 return mdev_state->pages[pgoff];
}
