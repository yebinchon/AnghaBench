
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmap_walk_control {struct anon_vma* (* anon_lock ) (struct page*) ;} ;
struct page {int dummy; } ;
struct anon_vma {int dummy; } ;


 int anon_vma_lock_read (struct anon_vma*) ;
 struct anon_vma* page_anon_vma (struct page*) ;
 struct anon_vma* stub1 (struct page*) ;

__attribute__((used)) static struct anon_vma *rmap_walk_anon_lock(struct page *page,
     struct rmap_walk_control *rwc)
{
 struct anon_vma *anon_vma;

 if (rwc->anon_lock)
  return rwc->anon_lock(page);







 anon_vma = page_anon_vma(page);
 if (!anon_vma)
  return ((void*)0);

 anon_vma_lock_read(anon_vma);
 return anon_vma;
}
