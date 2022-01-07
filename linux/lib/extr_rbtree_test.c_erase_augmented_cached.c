
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_node {int rb; } ;
struct rb_root_cached {int dummy; } ;


 int augment_callbacks ;
 int rb_erase_augmented_cached (int *,struct rb_root_cached*,int *) ;

__attribute__((used)) static void erase_augmented_cached(struct test_node *node,
       struct rb_root_cached *root)
{
 rb_erase_augmented_cached(&node->rb, root, &augment_callbacks);
}
