
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_node {int rb; } ;
struct rb_root_cached {int rb_root; } ;


 int augment_callbacks ;
 int rb_erase_augmented (int *,int *,int *) ;

__attribute__((used)) static void erase_augmented(struct test_node *node, struct rb_root_cached *root)
{
 rb_erase_augmented(&node->rb, &root->rb_root, &augment_callbacks);
}
