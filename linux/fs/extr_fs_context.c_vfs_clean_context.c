
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fs_context {int need_free; int phase; int purpose; int * source; int security; scalar_t__ sb_flags; int * s_fs_info; int * fs_private; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* free ) (struct fs_context*) ;} ;


 int FS_CONTEXT_AWAITING_RECONF ;
 int FS_CONTEXT_FOR_RECONFIGURE ;
 int kfree (int *) ;
 int security_free_mnt_opts (int *) ;
 int stub1 (struct fs_context*) ;

void vfs_clean_context(struct fs_context *fc)
{
 if (fc->need_free && fc->ops && fc->ops->free)
  fc->ops->free(fc);
 fc->need_free = 0;
 fc->fs_private = ((void*)0);
 fc->s_fs_info = ((void*)0);
 fc->sb_flags = 0;
 security_free_mnt_opts(&fc->security);
 kfree(fc->source);
 fc->source = ((void*)0);

 fc->purpose = FS_CONTEXT_FOR_RECONFIGURE;
 fc->phase = FS_CONTEXT_AWAITING_RECONF;
}
