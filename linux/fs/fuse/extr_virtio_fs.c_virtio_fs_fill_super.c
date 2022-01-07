
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct virtio_fs_vq {TYPE_2__* fud; } ;
struct virtio_fs {unsigned int nvqs; struct virtio_fs_vq* vqs; int tag; int list; } ;
struct super_block {int dummy; } ;
struct fuse_fs_context {int default_permissions; int allow_other; int blksize; int destroy; int no_control; int no_force_umount; int no_mount_options; void** fudptr; int max_read; int rootmode; } ;
struct TYPE_4__ {struct virtio_fs* priv; } ;
struct fuse_conn {TYPE_1__ iq; } ;
struct TYPE_5__ {struct fuse_conn* fc; } ;


 int EINVAL ;
 int ENOMEM ;
 int S_IFDIR ;
 int UINT_MAX ;
 unsigned int VQ_REQUEST ;
 TYPE_2__* fuse_dev_alloc () ;
 int fuse_dev_install (TYPE_2__*,struct fuse_conn*) ;
 int fuse_fill_super_common (struct super_block*,struct fuse_fs_context*) ;
 int fuse_send_init (struct fuse_conn*) ;
 struct fuse_conn* get_fuse_conn_super (struct super_block*) ;
 scalar_t__ list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_info (char*,int ) ;
 int virtio_fs_free_devs (struct virtio_fs*) ;
 int virtio_fs_mutex ;
 int virtio_fs_start_all_queues (struct virtio_fs*) ;

__attribute__((used)) static int virtio_fs_fill_super(struct super_block *sb)
{
 struct fuse_conn *fc = get_fuse_conn_super(sb);
 struct virtio_fs *fs = fc->iq.priv;
 unsigned int i;
 int err;
 struct fuse_fs_context ctx = {
  .rootmode = S_IFDIR,
  .default_permissions = 1,
  .allow_other = 1,
  .max_read = UINT_MAX,
  .blksize = 512,
  .destroy = 1,
  .no_control = 1,
  .no_force_umount = 1,
  .no_mount_options = 1,
 };

 mutex_lock(&virtio_fs_mutex);





 err = -EINVAL;
 if (list_empty(&fs->list)) {
  pr_info("virtio-fs: tag <%s> not found\n", fs->tag);
  goto err;
 }

 err = -ENOMEM;

 for (i = 0; i < VQ_REQUEST; i++) {
  struct virtio_fs_vq *fsvq = &fs->vqs[i];

  fsvq->fud = fuse_dev_alloc();
  if (!fsvq->fud)
   goto err_free_fuse_devs;
 }

 ctx.fudptr = (void **)&fs->vqs[VQ_REQUEST].fud;
 err = fuse_fill_super_common(sb, &ctx);
 if (err < 0)
  goto err_free_fuse_devs;

 fc = fs->vqs[VQ_REQUEST].fud->fc;

 for (i = 0; i < fs->nvqs; i++) {
  struct virtio_fs_vq *fsvq = &fs->vqs[i];

  if (i == VQ_REQUEST)
   continue;
  fuse_dev_install(fsvq->fud, fc);
 }


 virtio_fs_start_all_queues(fs);
 fuse_send_init(fc);
 mutex_unlock(&virtio_fs_mutex);
 return 0;

err_free_fuse_devs:
 virtio_fs_free_devs(fs);
err:
 mutex_unlock(&virtio_fs_mutex);
 return err;
}
