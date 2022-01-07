
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {struct pid_namespace* s_fs_info; } ;
struct pid_namespace {int dummy; } ;
struct fs_context {TYPE_1__* root; } ;
struct TYPE_2__ {struct super_block* d_sb; } ;


 int current_user_ns () ;
 int proc_apply_options (struct super_block*,struct fs_context*,struct pid_namespace*,int ) ;
 int sync_filesystem (struct super_block*) ;

__attribute__((used)) static int proc_reconfigure(struct fs_context *fc)
{
 struct super_block *sb = fc->root->d_sb;
 struct pid_namespace *pid = sb->s_fs_info;

 sync_filesystem(sb);

 proc_apply_options(sb, fc, pid, current_user_ns());
 return 0;
}
