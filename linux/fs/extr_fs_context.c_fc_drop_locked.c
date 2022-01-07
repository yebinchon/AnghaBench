
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct fs_context {TYPE_1__* root; } ;
struct TYPE_2__ {struct super_block* d_sb; } ;


 int deactivate_locked_super (struct super_block*) ;
 int dput (TYPE_1__*) ;

void fc_drop_locked(struct fs_context *fc)
{
 struct super_block *sb = fc->root->d_sb;
 dput(fc->root);
 fc->root = ((void*)0);
 deactivate_locked_super(sb);
}
