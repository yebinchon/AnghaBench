
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gfs2_sbd {int sd_root_dir; int sd_master_dir; } ;
struct gfs2_args {scalar_t__ ar_meta; } ;
struct fs_context {TYPE_2__* root; struct gfs2_args* fs_private; } ;
struct TYPE_4__ {TYPE_1__* d_sb; } ;
struct TYPE_3__ {struct gfs2_sbd* s_fs_info; } ;


 void* dget (int ) ;
 int dput (TYPE_2__*) ;
 int get_tree_bdev (struct fs_context*,int ) ;
 int gfs2_fill_super ;

__attribute__((used)) static int gfs2_get_tree(struct fs_context *fc)
{
 struct gfs2_args *args = fc->fs_private;
 struct gfs2_sbd *sdp;
 int error;

 error = get_tree_bdev(fc, gfs2_fill_super);
 if (error)
  return error;

 sdp = fc->root->d_sb->s_fs_info;
 dput(fc->root);
 if (args->ar_meta)
  fc->root = dget(sdp->sd_master_dir);
 else
  fc->root = dget(sdp->sd_root_dir);
 return 0;
}
