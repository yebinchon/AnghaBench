
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_tree_root {int * xa_head; } ;



__attribute__((used)) static inline bool radix_tree_empty(const struct radix_tree_root *root)
{
 return root->xa_head == ((void*)0);
}
