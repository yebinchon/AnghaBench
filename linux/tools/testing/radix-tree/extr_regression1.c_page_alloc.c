
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int count; int index; int lock; } ;


 struct page* malloc (int) ;
 int pthread_mutex_init (int *,int *) ;

__attribute__((used)) static struct page *page_alloc(int index)
{
 struct page *p;
 p = malloc(sizeof(struct page));
 p->count = 1;
 p->index = index;
 pthread_mutex_init(&p->lock, ((void*)0));

 return p;
}
