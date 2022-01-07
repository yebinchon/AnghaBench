
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int s_flags; struct gfs2_sbd* s_fs_info; } ;
struct path {TYPE_2__* dentry; } ;
struct gfs2_sbd {int sd_master_dir; } ;
struct fs_context {int sb_flags; int root; int sget_key; int * fs_type; int * source; } ;
struct TYPE_4__ {TYPE_1__* d_sb; } ;
struct TYPE_3__ {int s_bdev; } ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct super_block*) ;
 int LOOKUP_FOLLOW ;
 int PTR_ERR (struct super_block*) ;
 int SB_RDONLY ;
 int deactivate_locked_super (struct super_block*) ;
 int dget (int ) ;
 int gfs2_fs_type ;
 int kern_path (int *,int ,struct path*) ;
 int path_put (struct path*) ;
 int pr_warn (char*,...) ;
 int set_meta_super ;
 struct super_block* sget_fc (struct fs_context*,int ,int ) ;
 int test_meta_super ;

__attribute__((used)) static int gfs2_meta_get_tree(struct fs_context *fc)
{
 struct super_block *s;
 struct gfs2_sbd *sdp;
 struct path path;
 int error;

 if (!fc->source || !*fc->source)
  return -EINVAL;

 error = kern_path(fc->source, LOOKUP_FOLLOW, &path);
 if (error) {
  pr_warn("path_lookup on %s returned error %d\n",
          fc->source, error);
  return error;
 }
 fc->fs_type = &gfs2_fs_type;
 fc->sget_key = path.dentry->d_sb->s_bdev;
 s = sget_fc(fc, test_meta_super, set_meta_super);
 path_put(&path);
 if (IS_ERR(s)) {
  pr_warn("gfs2 mount does not exist\n");
  return PTR_ERR(s);
 }
 if ((fc->sb_flags ^ s->s_flags) & SB_RDONLY) {
  deactivate_locked_super(s);
  return -EBUSY;
 }
 sdp = s->s_fs_info;
 fc->root = dget(sdp->sd_master_dir);
 return 0;
}
