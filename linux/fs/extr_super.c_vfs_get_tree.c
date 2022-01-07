
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct super_block {scalar_t__ s_maxbytes; int s_flags; int s_bdi; } ;
struct fs_context {TYPE_3__* fs_type; int security; TYPE_2__* root; TYPE_1__* ops; } ;
struct TYPE_6__ {int name; } ;
struct TYPE_5__ {struct super_block* d_sb; } ;
struct TYPE_4__ {int (* get_tree ) (struct fs_context*) ;} ;


 int BUG () ;
 int EBUSY ;
 int SB_BORN ;
 int WARN (int,char*,int ,scalar_t__) ;
 int WARN_ON (int) ;
 int fc_drop_locked (struct fs_context*) ;
 int pr_err (char*,int ) ;
 int security_sb_set_mnt_opts (struct super_block*,int ,int ,int *) ;
 int smp_wmb () ;
 int stub1 (struct fs_context*) ;
 scalar_t__ unlikely (int) ;

int vfs_get_tree(struct fs_context *fc)
{
 struct super_block *sb;
 int error;

 if (fc->root)
  return -EBUSY;




 error = fc->ops->get_tree(fc);
 if (error < 0)
  return error;

 if (!fc->root) {
  pr_err("Filesystem %s get_tree() didn't set fc->root\n",
         fc->fs_type->name);



  BUG();
 }

 sb = fc->root->d_sb;
 WARN_ON(!sb->s_bdi);







 smp_wmb();
 sb->s_flags |= SB_BORN;

 error = security_sb_set_mnt_opts(sb, fc->security, 0, ((void*)0));
 if (unlikely(error)) {
  fc_drop_locked(fc);
  return error;
 }







 WARN((sb->s_maxbytes < 0), "%s set sb->s_maxbytes to "
  "negative value (%lld)\n", fc->fs_type->name, sb->s_maxbytes);

 return 0;
}
