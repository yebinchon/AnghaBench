
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct mdev_state {scalar_t__ pagecount; int ops_lock; } ;
typedef scalar_t__ pgoff_t ;


 scalar_t__ WARN_ON (int) ;
 struct page* __mbochs_get_page (struct mdev_state*,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct page *mbochs_get_page(struct mdev_state *mdev_state,
        pgoff_t pgoff)
{
 struct page *page;

 if (WARN_ON(pgoff >= mdev_state->pagecount))
  return ((void*)0);

 mutex_lock(&mdev_state->ops_lock);
 page = __mbochs_get_page(mdev_state, pgoff);
 mutex_unlock(&mdev_state->ops_lock);

 return page;
}
