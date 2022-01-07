
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct anon_vma {int rwsem; } ;


 int up_write (int *) ;

__attribute__((used)) static inline void unlock_anon_vma_root(struct anon_vma *root)
{
 if (root)
  up_write(&root->rwsem);
}
