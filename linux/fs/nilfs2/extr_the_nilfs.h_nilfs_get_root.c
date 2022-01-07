
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_root {int count; } ;


 int refcount_inc (int *) ;

__attribute__((used)) static inline void nilfs_get_root(struct nilfs_root *root)
{
 refcount_inc(&root->count);
}
