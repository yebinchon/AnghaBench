
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fscache_cache_tag {int link; int usage; } ;


 int ENOMEM ;
 struct fscache_cache_tag* ERR_PTR (int ) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int down_write (int *) ;
 int fscache_addremove_sem ;
 int kfree (struct fscache_cache_tag*) ;
 int list_del_init (int *) ;
 int up_write (int *) ;

void __fscache_release_cache_tag(struct fscache_cache_tag *tag)
{
 if (tag != ERR_PTR(-ENOMEM)) {
  down_write(&fscache_addremove_sem);

  if (atomic_dec_and_test(&tag->usage))
   list_del_init(&tag->link);
  else
   tag = ((void*)0);

  up_write(&fscache_addremove_sem);

  kfree(tag);
 }
}
