
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct anon_vma {int rwsem; struct anon_vma* root; } ;


 scalar_t__ WARN_ON_ONCE (struct anon_vma*) ;
 int down_write (int *) ;
 int up_write (int *) ;

__attribute__((used)) static inline struct anon_vma *lock_anon_vma_root(struct anon_vma *root, struct anon_vma *anon_vma)
{
 struct anon_vma *new_root = anon_vma->root;
 if (new_root != root) {
  if (WARN_ON_ONCE(root))
   up_write(&root->rwsem);
  root = new_root;
  down_write(&root->rwsem);
 }
 return root;
}
