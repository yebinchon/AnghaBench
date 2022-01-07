
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct path {TYPE_4__* dentry; TYPE_2__* mnt; } ;
struct TYPE_7__ {int nfs_export; int index; scalar_t__ upperdir; } ;
struct ovl_fs {scalar_t__ xino_bits; TYPE_3__ config; } ;
struct TYPE_8__ {int d_sb; } ;
struct TYPE_6__ {TYPE_1__* mnt_sb; } ;
struct TYPE_5__ {int s_stack_depth; } ;


 int FILEID_INO32_GEN ;
 int max (int,int ) ;
 int ovl_can_decode_fh (int ) ;
 int ovl_check_namelen (struct path*,struct ovl_fs*,char const*) ;
 scalar_t__ ovl_dentry_remote (TYPE_4__*) ;
 int ovl_mount_dir_noesc (char const*,struct path*) ;
 int path_put_init (struct path*) ;
 int pr_warn (char*,char const*) ;

__attribute__((used)) static int ovl_lower_dir(const char *name, struct path *path,
    struct ovl_fs *ofs, int *stack_depth, bool *remote)
{
 int fh_type;
 int err;

 err = ovl_mount_dir_noesc(name, path);
 if (err)
  goto out;

 err = ovl_check_namelen(path, ofs, name);
 if (err)
  goto out_put;

 *stack_depth = max(*stack_depth, path->mnt->mnt_sb->s_stack_depth);

 if (ovl_dentry_remote(path->dentry))
  *remote = 1;





 fh_type = ovl_can_decode_fh(path->dentry->d_sb);
 if ((ofs->config.nfs_export ||
      (ofs->config.index && ofs->config.upperdir)) && !fh_type) {
  ofs->config.index = 0;
  ofs->config.nfs_export = 0;
  pr_warn("overlayfs: fs on '%s' does not support file handles, falling back to index=off,nfs_export=off.\n",
   name);
 }


 if (fh_type != FILEID_INO32_GEN)
  ofs->xino_bits = 0;

 return 0;

out_put:
 path_put_init(path);
out:
 return err;
}
