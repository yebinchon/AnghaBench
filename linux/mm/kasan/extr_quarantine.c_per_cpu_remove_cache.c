
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlist_head {int dummy; } ;
struct kmem_cache {int dummy; } ;


 struct qlist_head QLIST_INIT ;
 int cpu_quarantine ;
 int qlist_free_all (struct qlist_head*,struct kmem_cache*) ;
 int qlist_move_cache (struct qlist_head*,struct qlist_head*,struct kmem_cache*) ;
 struct qlist_head* this_cpu_ptr (int *) ;

__attribute__((used)) static void per_cpu_remove_cache(void *arg)
{
 struct kmem_cache *cache = arg;
 struct qlist_head to_free = QLIST_INIT;
 struct qlist_head *q;

 q = this_cpu_ptr(&cpu_quarantine);
 qlist_move_cache(q, &to_free, cache);
 qlist_free_all(&to_free, cache);
}
