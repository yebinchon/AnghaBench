
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zspage {int dummy; } ;
struct TYPE_2__ {int pages_compacted; } ;
struct zs_pool {TYPE_1__ stats; } ;
struct zs_compact_control {void* d_page; void* s_page; scalar_t__ obj_idx; } ;
struct size_class {int lock; scalar_t__ pages_per_zspage; } ;


 scalar_t__ ZS_EMPTY ;
 int cond_resched () ;
 int free_zspage (struct zs_pool*,struct size_class*,struct zspage*) ;
 void* get_first_page (struct zspage*) ;
 struct zspage* isolate_zspage (struct size_class*,int) ;
 int migrate_zspage (struct zs_pool*,struct size_class*,struct zs_compact_control*) ;
 scalar_t__ putback_zspage (struct size_class*,struct zspage*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int zs_can_compact (struct size_class*) ;

__attribute__((used)) static void __zs_compact(struct zs_pool *pool, struct size_class *class)
{
 struct zs_compact_control cc;
 struct zspage *src_zspage;
 struct zspage *dst_zspage = ((void*)0);

 spin_lock(&class->lock);
 while ((src_zspage = isolate_zspage(class, 1))) {

  if (!zs_can_compact(class))
   break;

  cc.obj_idx = 0;
  cc.s_page = get_first_page(src_zspage);

  while ((dst_zspage = isolate_zspage(class, 0))) {
   cc.d_page = get_first_page(dst_zspage);




   if (!migrate_zspage(pool, class, &cc))
    break;

   putback_zspage(class, dst_zspage);
  }


  if (dst_zspage == ((void*)0))
   break;

  putback_zspage(class, dst_zspage);
  if (putback_zspage(class, src_zspage) == ZS_EMPTY) {
   free_zspage(pool, class, src_zspage);
   pool->stats.pages_compacted += class->pages_per_zspage;
  }
  spin_unlock(&class->lock);
  cond_resched();
  spin_lock(&class->lock);
 }

 if (src_zspage)
  putback_zspage(class, src_zspage);

 spin_unlock(&class->lock);
}
