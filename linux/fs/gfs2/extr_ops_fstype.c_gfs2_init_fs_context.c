
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gfs2_args {int ar_commit; int ar_statfs_quantum; int ar_quota_quantum; int ar_errors; int ar_data; int ar_quota; } ;
struct gfs2_sbd {struct gfs2_args sd_args; } ;
struct fs_context {scalar_t__ purpose; int * ops; struct gfs2_args* fs_private; TYPE_2__* root; } ;
struct TYPE_4__ {TYPE_1__* d_sb; } ;
struct TYPE_3__ {struct gfs2_sbd* s_fs_info; } ;


 int ENOMEM ;
 scalar_t__ FS_CONTEXT_FOR_RECONFIGURE ;
 int GFP_KERNEL ;
 int GFS2_DATA_DEFAULT ;
 int GFS2_ERRORS_DEFAULT ;
 int GFS2_QUOTA_DEFAULT ;
 int gfs2_context_ops ;
 struct gfs2_args* kmalloc (int,int ) ;
 int memset (struct gfs2_args*,int ,int) ;

__attribute__((used)) static int gfs2_init_fs_context(struct fs_context *fc)
{
 struct gfs2_args *args;

 args = kmalloc(sizeof(*args), GFP_KERNEL);
 if (args == ((void*)0))
  return -ENOMEM;

 if (fc->purpose == FS_CONTEXT_FOR_RECONFIGURE) {
  struct gfs2_sbd *sdp = fc->root->d_sb->s_fs_info;

  *args = sdp->sd_args;
 } else {
  memset(args, 0, sizeof(*args));
  args->ar_quota = GFS2_QUOTA_DEFAULT;
  args->ar_data = GFS2_DATA_DEFAULT;
  args->ar_commit = 30;
  args->ar_statfs_quantum = 30;
  args->ar_quota_quantum = 60;
  args->ar_errors = GFS2_ERRORS_DEFAULT;
 }
 fc->fs_private = args;
 fc->ops = &gfs2_context_ops;
 return 0;
}
