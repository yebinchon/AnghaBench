
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vol_id; int ubi_num; } ;
struct ubifs_info {int ro_mount; TYPE_1__ vi; } ;
struct ubi_volume_desc {scalar_t__ s_root; int s_flags; struct ubifs_info* s_fs_info; } ;
struct super_block {scalar_t__ s_root; int s_flags; struct ubifs_info* s_fs_info; } ;
struct file_system_type {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_4__ {int pid; } ;


 int CONFIG_UBIFS_ATIME_SUPPORT ;
 int EBUSY ;
 int ENOMEM ;
 struct dentry* ERR_CAST (struct ubi_volume_desc*) ;
 struct dentry* ERR_PTR (int) ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ IS_ERR (struct ubi_volume_desc*) ;
 int PTR_ERR (struct ubi_volume_desc*) ;
 int SB_ACTIVE ;
 int SB_NOATIME ;
 int SB_RDONLY ;
 int SB_SILENT ;
 int UBI_READONLY ;
 struct ubifs_info* alloc_ubifs_info (struct ubi_volume_desc*) ;
 TYPE_2__* current ;
 int dbg_gen (char*,...) ;
 int deactivate_locked_super (struct ubi_volume_desc*) ;
 struct dentry* dget (scalar_t__) ;
 int kfree (struct ubifs_info*) ;
 struct ubi_volume_desc* open_ubi (char const*,int ) ;
 int pr_err (char*,int ,char const*,int) ;
 int sb_set ;
 int sb_test ;
 struct ubi_volume_desc* sget (struct file_system_type*,int ,int ,int,struct ubifs_info*) ;
 int ubi_close_volume (struct ubi_volume_desc*) ;
 int ubifs_fill_super (struct ubi_volume_desc*,void*,int) ;
 int ubifs_msg (struct ubifs_info*,char*) ;

__attribute__((used)) static struct dentry *ubifs_mount(struct file_system_type *fs_type, int flags,
   const char *name, void *data)
{
 struct ubi_volume_desc *ubi;
 struct ubifs_info *c;
 struct super_block *sb;
 int err;

 dbg_gen("name %s, flags %#x", name, flags);






 ubi = open_ubi(name, UBI_READONLY);
 if (IS_ERR(ubi)) {
  if (!(flags & SB_SILENT))
   pr_err("UBIFS error (pid: %d): cannot open \"%s\", error %d",
          current->pid, name, (int)PTR_ERR(ubi));
  return ERR_CAST(ubi);
 }

 c = alloc_ubifs_info(ubi);
 if (!c) {
  err = -ENOMEM;
  goto out_close;
 }

 dbg_gen("opened ubi%d_%d", c->vi.ubi_num, c->vi.vol_id);

 sb = sget(fs_type, sb_test, sb_set, flags, c);
 if (IS_ERR(sb)) {
  err = PTR_ERR(sb);
  kfree(c);
  goto out_close;
 }

 if (sb->s_root) {
  struct ubifs_info *c1 = sb->s_fs_info;
  kfree(c);

  dbg_gen("this ubi volume is already mounted");
  if (!!(flags & SB_RDONLY) != c1->ro_mount) {
   err = -EBUSY;
   goto out_deact;
  }
 } else {
  err = ubifs_fill_super(sb, data, flags & SB_SILENT ? 1 : 0);
  if (err) {
   kfree(c);
   goto out_deact;
  }

  sb->s_flags |= SB_ACTIVE;
  if (IS_ENABLED(CONFIG_UBIFS_ATIME_SUPPORT))
   ubifs_msg(c, "full atime support is enabled.");
  else
   sb->s_flags |= SB_NOATIME;
 }


 ubi_close_volume(ubi);

 return dget(sb->s_root);

out_deact:
 deactivate_locked_super(sb);
out_close:
 ubi_close_volume(ubi);
 return ERR_PTR(err);
}
