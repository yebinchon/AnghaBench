
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_context {int dummy; } ;


 int get_tree_nodev (struct fs_context*,int ) ;
 int hugetlbfs_fill_super ;
 int hugetlbfs_validate (struct fs_context*) ;

__attribute__((used)) static int hugetlbfs_get_tree(struct fs_context *fc)
{
 int err = hugetlbfs_validate(fc);
 if (err)
  return err;
 return get_tree_nodev(fc, hugetlbfs_fill_super);
}
