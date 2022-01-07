
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmap_walk_control {int dummy; } ;
struct page {int dummy; } ;


 scalar_t__ PageAnon (struct page*) ;
 int PageKsm (struct page*) ;
 int rmap_walk_anon (struct page*,struct rmap_walk_control*,int) ;
 int rmap_walk_file (struct page*,struct rmap_walk_control*,int) ;
 int rmap_walk_ksm (struct page*,struct rmap_walk_control*) ;
 scalar_t__ unlikely (int ) ;

void rmap_walk(struct page *page, struct rmap_walk_control *rwc)
{
 if (unlikely(PageKsm(page)))
  rmap_walk_ksm(page, rwc);
 else if (PageAnon(page))
  rmap_walk_anon(page, rwc, 0);
 else
  rmap_walk_file(page, rwc, 0);
}
