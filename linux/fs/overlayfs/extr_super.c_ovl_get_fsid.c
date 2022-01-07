
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct super_block {int s_uuid; } ;
struct path {int dentry; TYPE_1__* mnt; } ;
struct TYPE_7__ {int index; int nfs_export; } ;
struct ovl_fs {unsigned int numlowerfs; TYPE_4__* lower_fs; TYPE_3__ config; TYPE_2__* upper_mnt; } ;
typedef int dev_t ;
struct TYPE_8__ {int pseudo_dev; struct super_block* sb; } ;
struct TYPE_6__ {struct super_block* mnt_sb; } ;
struct TYPE_5__ {struct super_block* mnt_sb; } ;


 int get_anon_bdev (int *) ;
 int ovl_lower_uuid_ok (struct ovl_fs*,int *) ;
 int pr_err (char*) ;
 int pr_warn (char*,char*,int ) ;
 scalar_t__ uuid_is_null (int *) ;

__attribute__((used)) static int ovl_get_fsid(struct ovl_fs *ofs, const struct path *path)
{
 struct super_block *sb = path->mnt->mnt_sb;
 unsigned int i;
 dev_t dev;
 int err;


 if (ofs->upper_mnt && ofs->upper_mnt->mnt_sb == sb)
  return 0;

 for (i = 0; i < ofs->numlowerfs; i++) {
  if (ofs->lower_fs[i].sb == sb)
   return i + 1;
 }

 if (!ovl_lower_uuid_ok(ofs, &sb->s_uuid)) {
  ofs->config.index = 0;
  ofs->config.nfs_export = 0;
  pr_warn("overlayfs: %s uuid detected in lower fs '%pd2', falling back to index=off,nfs_export=off.\n",
   uuid_is_null(&sb->s_uuid) ? "null" : "conflicting",
   path->dentry);
 }

 err = get_anon_bdev(&dev);
 if (err) {
  pr_err("overlayfs: failed to get anonymous bdev for lowerpath\n");
  return err;
 }

 ofs->lower_fs[ofs->numlowerfs].sb = sb;
 ofs->lower_fs[ofs->numlowerfs].pseudo_dev = dev;
 ofs->numlowerfs++;

 return ofs->numlowerfs;
}
