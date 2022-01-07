
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct fs_context {struct fs_context* source; int fs_type; int cred; int user_ns; int net_ns; int security; TYPE_1__* ops; scalar_t__ need_free; TYPE_2__* root; } ;
struct TYPE_4__ {struct super_block* d_sb; } ;
struct TYPE_3__ {int (* free ) (struct fs_context*) ;} ;


 int deactivate_super (struct super_block*) ;
 int dput (TYPE_2__*) ;
 int kfree (struct fs_context*) ;
 int put_cred (int ) ;
 int put_fc_log (struct fs_context*) ;
 int put_filesystem (int ) ;
 int put_net (int ) ;
 int put_user_ns (int ) ;
 int security_free_mnt_opts (int *) ;
 int stub1 (struct fs_context*) ;

void put_fs_context(struct fs_context *fc)
{
 struct super_block *sb;

 if (fc->root) {
  sb = fc->root->d_sb;
  dput(fc->root);
  fc->root = ((void*)0);
  deactivate_super(sb);
 }

 if (fc->need_free && fc->ops && fc->ops->free)
  fc->ops->free(fc);

 security_free_mnt_opts(&fc->security);
 put_net(fc->net_ns);
 put_user_ns(fc->user_ns);
 put_cred(fc->cred);
 put_fc_log(fc);
 put_filesystem(fc->fs_type);
 kfree(fc->source);
 kfree(fc);
}
