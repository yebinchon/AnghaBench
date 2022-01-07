
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet_frags {int completion; int refcnt; int frags_cachep; int qsize; int frags_cache_name; } ;


 int ENOMEM ;
 int init_completion (int *) ;
 int kmem_cache_create (int ,int ,int ,int ,int *) ;
 int refcount_set (int *,int) ;

int inet_frags_init(struct inet_frags *f)
{
 f->frags_cachep = kmem_cache_create(f->frags_cache_name, f->qsize, 0, 0,
         ((void*)0));
 if (!f->frags_cachep)
  return -ENOMEM;

 refcount_set(&f->refcnt, 1);
 init_completion(&f->completion);
 return 0;
}
