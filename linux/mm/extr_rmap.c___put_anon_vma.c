
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct anon_vma {int refcount; struct anon_vma* root; } ;


 int anon_vma_free (struct anon_vma*) ;
 scalar_t__ atomic_dec_and_test (int *) ;

void __put_anon_vma(struct anon_vma *anon_vma)
{
 struct anon_vma *root = anon_vma->root;

 anon_vma_free(anon_vma);
 if (root != anon_vma && atomic_dec_and_test(&root->refcount))
  anon_vma_free(root);
}
