
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct kernfs_fs_context {int * ns_tag; } ;
struct fs_context {struct kernfs_fs_context* fs_private; } ;


 int set_anon_super_fc (struct super_block*,struct fs_context*) ;

__attribute__((used)) static int kernfs_set_super(struct super_block *sb, struct fs_context *fc)
{
 struct kernfs_fs_context *kfc = fc->fs_private;

 kfc->ns_tag = ((void*)0);
 return set_anon_super_fc(sb, fc);
}
