
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_fs {int dummy; } ;
struct fuse_iqueue {struct virtio_fs* priv; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int virtio_fs_mutex ;
 int virtio_fs_put (struct virtio_fs*) ;

__attribute__((used)) static void virtio_fs_fiq_release(struct fuse_iqueue *fiq)
{
 struct virtio_fs *vfs = fiq->priv;

 mutex_lock(&virtio_fs_mutex);
 virtio_fs_put(vfs);
 mutex_unlock(&virtio_fs_mutex);
}
