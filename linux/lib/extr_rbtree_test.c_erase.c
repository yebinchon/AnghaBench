
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_node {int rb; } ;
struct rb_root_cached {int rb_root; } ;


 int rb_erase (int *,int *) ;

__attribute__((used)) static inline void erase(struct test_node *node, struct rb_root_cached *root)
{
 rb_erase(&node->rb, &root->rb_root);
}
