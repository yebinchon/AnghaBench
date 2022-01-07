
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_root; } ;
struct dentry {int dummy; } ;


 int DQUOT_LIMITS_ENABLED ;
 int DQUOT_USAGE_ENABLED ;
 int ENOENT ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;
 int d_inode (struct dentry*) ;
 scalar_t__ d_really_is_negative (struct dentry*) ;
 int dput (struct dentry*) ;
 struct dentry* lookup_one_len_unlocked (char*,int ,int ) ;
 int security_quota_on (struct dentry*) ;
 int strlen (char*) ;
 int vfs_load_quota_inode (int ,int,int,int) ;

int dquot_quota_on_mount(struct super_block *sb, char *qf_name,
  int format_id, int type)
{
 struct dentry *dentry;
 int error;

 dentry = lookup_one_len_unlocked(qf_name, sb->s_root, strlen(qf_name));
 if (IS_ERR(dentry))
  return PTR_ERR(dentry);

 if (d_really_is_negative(dentry)) {
  error = -ENOENT;
  goto out;
 }

 error = security_quota_on(dentry);
 if (!error)
  error = vfs_load_quota_inode(d_inode(dentry), type, format_id,
    DQUOT_USAGE_ENABLED | DQUOT_LIMITS_ENABLED);

out:
 dput(dentry);
 return error;
}
