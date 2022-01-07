
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_fs {int dummy; } ;
struct super_block {int s_root; int s_flags; } ;
struct fuse_conn {int delete_stale; int release; } ;
struct fs_context {int root; struct fuse_conn* s_fs_info; int source; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct super_block*) ;
 int PTR_ERR (struct super_block*) ;
 int SB_ACTIVE ;
 int WARN_ON (int ) ;
 int current_user_ns () ;
 int deactivate_locked_super (struct super_block*) ;
 int dget (int ) ;
 int fuse_conn_init (struct fuse_conn*,int ,int *,struct virtio_fs*) ;
 int fuse_conn_put (struct fuse_conn*) ;
 int fuse_free_conn ;
 int get_user_ns (int ) ;
 struct fuse_conn* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_info (char*,int ) ;
 struct super_block* sget_fc (struct fs_context*,int ,int ) ;
 int virtio_fs_fill_super (struct super_block*) ;
 struct virtio_fs* virtio_fs_find_instance (int ) ;
 int virtio_fs_fiq_ops ;
 int virtio_fs_mutex ;
 int virtio_fs_put (struct virtio_fs*) ;
 int virtio_fs_set_super ;
 int virtio_fs_test_super ;

__attribute__((used)) static int virtio_fs_get_tree(struct fs_context *fsc)
{
 struct virtio_fs *fs;
 struct super_block *sb;
 struct fuse_conn *fc;
 int err;





 fs = virtio_fs_find_instance(fsc->source);
 if (!fs) {
  pr_info("virtio-fs: tag <%s> not found\n", fsc->source);
  return -EINVAL;
 }

 fc = kzalloc(sizeof(struct fuse_conn), GFP_KERNEL);
 if (!fc) {
  mutex_lock(&virtio_fs_mutex);
  virtio_fs_put(fs);
  mutex_unlock(&virtio_fs_mutex);
  return -ENOMEM;
 }

 fuse_conn_init(fc, get_user_ns(current_user_ns()), &virtio_fs_fiq_ops,
         fs);
 fc->release = fuse_free_conn;
 fc->delete_stale = 1;

 fsc->s_fs_info = fc;
 sb = sget_fc(fsc, virtio_fs_test_super, virtio_fs_set_super);
 fuse_conn_put(fc);
 if (IS_ERR(sb))
  return PTR_ERR(sb);

 if (!sb->s_root) {
  err = virtio_fs_fill_super(sb);
  if (err) {
   deactivate_locked_super(sb);
   return err;
  }

  sb->s_flags |= SB_ACTIVE;
 }

 WARN_ON(fsc->root);
 fsc->root = dget(sb->s_root);
 return 0;
}
