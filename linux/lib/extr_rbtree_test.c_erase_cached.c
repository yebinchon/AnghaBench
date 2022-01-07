
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_node {int rb; } ;
struct rb_root_cached {int dummy; } ;


 int rb_erase_cached (int *,struct rb_root_cached*) ;

__attribute__((used)) static inline void erase_cached(struct test_node *node, struct rb_root_cached *root)
{
 rb_erase_cached(&node->rb, root);
}
