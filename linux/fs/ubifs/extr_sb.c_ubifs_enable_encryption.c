
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_sb_node {int flags; } ;
struct ubifs_info {int encrypted; int fmt_version; scalar_t__ ro_media; scalar_t__ ro_mount; struct ubifs_sb_node* sup_node; } ;


 int CONFIG_FS_ENCRYPTION ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int EROFS ;
 int IS_ENABLED (int ) ;
 int UBIFS_FLG_ENCRYPTION ;
 int cpu_to_le32 (int ) ;
 int ubifs_err (struct ubifs_info*,char*) ;
 int ubifs_write_sb_node (struct ubifs_info*,struct ubifs_sb_node*) ;

int ubifs_enable_encryption(struct ubifs_info *c)
{
 int err;
 struct ubifs_sb_node *sup = c->sup_node;

 if (!IS_ENABLED(CONFIG_FS_ENCRYPTION))
  return -EOPNOTSUPP;

 if (c->encrypted)
  return 0;

 if (c->ro_mount || c->ro_media)
  return -EROFS;

 if (c->fmt_version < 5) {
  ubifs_err(c, "on-flash format version 5 is needed for encryption");
  return -EINVAL;
 }

 sup->flags |= cpu_to_le32(UBIFS_FLG_ENCRYPTION);

 err = ubifs_write_sb_node(c, sup);
 if (!err)
  c->encrypted = 1;

 return err;
}
