
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtio_fs_vq {int connected; int lock; } ;
struct virtio_fs {struct virtio_fs_vq* vqs; } ;
struct super_block {int dummy; } ;
struct TYPE_2__ {struct virtio_fs* priv; } ;
struct fuse_conn {TYPE_1__ iq; } ;


 size_t VQ_HIPRIO ;
 void fuse_kill_sb_anon (struct super_block*) ;
 struct fuse_conn* get_fuse_conn_super (struct super_block*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int virtio_fs_drain_all_queues (struct virtio_fs*) ;
 int virtio_fs_free_devs (struct virtio_fs*) ;
 int virtio_fs_stop_all_queues (struct virtio_fs*) ;

__attribute__((used)) static void virtio_kill_sb(struct super_block *sb)
{
 struct fuse_conn *fc = get_fuse_conn_super(sb);
 struct virtio_fs *vfs;
 struct virtio_fs_vq *fsvq;


 if (!fc)
  return fuse_kill_sb_anon(sb);

 vfs = fc->iq.priv;
 fsvq = &vfs->vqs[VQ_HIPRIO];


 spin_lock(&fsvq->lock);
 fsvq->connected = 0;
 spin_unlock(&fsvq->lock);
 virtio_fs_drain_all_queues(vfs);

 fuse_kill_sb_anon(sb);






 virtio_fs_stop_all_queues(vfs);
 virtio_fs_drain_all_queues(vfs);
 virtio_fs_free_devs(vfs);
}
