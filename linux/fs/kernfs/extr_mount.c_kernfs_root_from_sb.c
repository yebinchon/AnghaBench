
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int * s_op; } ;
struct kernfs_root {int dummy; } ;
struct TYPE_2__ {struct kernfs_root* root; } ;


 TYPE_1__* kernfs_info (struct super_block*) ;
 int kernfs_sops ;

struct kernfs_root *kernfs_root_from_sb(struct super_block *sb)
{
 if (sb->s_op == &kernfs_sops)
  return kernfs_info(sb)->root;
 return ((void*)0);
}
