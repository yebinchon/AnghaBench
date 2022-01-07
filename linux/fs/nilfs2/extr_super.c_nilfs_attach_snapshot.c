
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {int ns_snapshot_mount_mutex; int ns_segctor_sem; int ns_cpfile; } ;
struct super_block {struct the_nilfs* s_fs_info; } ;
struct nilfs_root {int dummy; } ;
struct dentry {int dummy; } ;
typedef scalar_t__ __u64 ;


 int EINVAL ;
 int ENOENT ;
 int KERN_ERR ;
 int down_read (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nilfs_attach_checkpoint (struct super_block*,scalar_t__,int,struct nilfs_root**) ;
 int nilfs_cpfile_is_snapshot (int ,scalar_t__) ;
 int nilfs_get_root_dentry (struct super_block*,struct nilfs_root*,struct dentry**) ;
 int nilfs_msg (struct super_block*,int ,char*,int,...) ;
 int nilfs_put_root (struct nilfs_root*) ;
 int up_read (int *) ;

__attribute__((used)) static int nilfs_attach_snapshot(struct super_block *s, __u64 cno,
     struct dentry **root_dentry)
{
 struct the_nilfs *nilfs = s->s_fs_info;
 struct nilfs_root *root;
 int ret;

 mutex_lock(&nilfs->ns_snapshot_mount_mutex);

 down_read(&nilfs->ns_segctor_sem);
 ret = nilfs_cpfile_is_snapshot(nilfs->ns_cpfile, cno);
 up_read(&nilfs->ns_segctor_sem);
 if (ret < 0) {
  ret = (ret == -ENOENT) ? -EINVAL : ret;
  goto out;
 } else if (!ret) {
  nilfs_msg(s, KERN_ERR,
     "The specified checkpoint is not a snapshot (checkpoint number=%llu)",
     (unsigned long long)cno);
  ret = -EINVAL;
  goto out;
 }

 ret = nilfs_attach_checkpoint(s, cno, 0, &root);
 if (ret) {
  nilfs_msg(s, KERN_ERR,
     "error %d while loading snapshot (checkpoint number=%llu)",
     ret, (unsigned long long)cno);
  goto out;
 }
 ret = nilfs_get_root_dentry(s, root, root_dentry);
 nilfs_put_root(root);
 out:
 mutex_unlock(&nilfs->ns_snapshot_mount_mutex);
 return ret;
}
