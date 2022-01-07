
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct anon_vma {int rb_root; int refcount; int rwsem; } ;


 int RB_ROOT_CACHED ;
 int atomic_set (int *,int ) ;
 int init_rwsem (int *) ;

__attribute__((used)) static void anon_vma_ctor(void *data)
{
 struct anon_vma *anon_vma = data;

 init_rwsem(&anon_vma->rwsem);
 atomic_set(&anon_vma->refcount, 0);
 anon_vma->rb_root = RB_ROOT_CACHED;
}
