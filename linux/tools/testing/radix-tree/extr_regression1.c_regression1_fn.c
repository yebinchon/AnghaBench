
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int lock; int count; } ;


 scalar_t__ PTHREAD_BARRIER_SERIAL_THREAD ;
 int find_get_pages (int ,int,struct page**) ;
 int mt_tree ;
 struct page* page_alloc (int) ;
 int page_free (struct page*) ;
 scalar_t__ pthread_barrier_wait (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 struct page* radix_tree_delete (int *,int) ;
 int radix_tree_insert (int *,int,struct page*) ;
 int rcu_register_thread () ;
 int rcu_unregister_thread () ;
 int worker_barrier ;
 int xa_lock (int *) ;
 int xa_unlock (int *) ;

__attribute__((used)) static void *regression1_fn(void *arg)
{
 rcu_register_thread();

 if (pthread_barrier_wait(&worker_barrier) ==
   PTHREAD_BARRIER_SERIAL_THREAD) {
  int j;

  for (j = 0; j < 1000000; j++) {
   struct page *p;

   p = page_alloc(0);
   xa_lock(&mt_tree);
   radix_tree_insert(&mt_tree, 0, p);
   xa_unlock(&mt_tree);

   p = page_alloc(1);
   xa_lock(&mt_tree);
   radix_tree_insert(&mt_tree, 1, p);
   xa_unlock(&mt_tree);

   xa_lock(&mt_tree);
   p = radix_tree_delete(&mt_tree, 1);
   pthread_mutex_lock(&p->lock);
   p->count--;
   pthread_mutex_unlock(&p->lock);
   xa_unlock(&mt_tree);
   page_free(p);

   xa_lock(&mt_tree);
   p = radix_tree_delete(&mt_tree, 0);
   pthread_mutex_lock(&p->lock);
   p->count--;
   pthread_mutex_unlock(&p->lock);
   xa_unlock(&mt_tree);
   page_free(p);
  }
 } else {
  int j;

  for (j = 0; j < 100000000; j++) {
   struct page *pages[10];

   find_get_pages(0, 10, pages);
  }
 }

 rcu_unregister_thread();

 return ((void*)0);
}
