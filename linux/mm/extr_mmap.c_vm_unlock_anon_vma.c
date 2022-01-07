
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct anon_vma {TYPE_3__* root; } ;
struct TYPE_4__ {int rb_node; } ;
struct TYPE_5__ {TYPE_1__ rb_root; } ;
struct TYPE_6__ {TYPE_2__ rb_root; } ;


 int BUG () ;
 int __test_and_clear_bit (int ,unsigned long*) ;
 int anon_vma_unlock_write (struct anon_vma*) ;
 scalar_t__ test_bit (int ,unsigned long*) ;

__attribute__((used)) static void vm_unlock_anon_vma(struct anon_vma *anon_vma)
{
 if (test_bit(0, (unsigned long *) &anon_vma->root->rb_root.rb_root.rb_node)) {
  if (!__test_and_clear_bit(0, (unsigned long *)
       &anon_vma->root->rb_root.rb_root.rb_node))
   BUG();
  anon_vma_unlock_write(anon_vma);
 }
}
