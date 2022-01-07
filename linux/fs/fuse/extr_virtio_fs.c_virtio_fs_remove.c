
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtio_fs {int list; } ;
struct virtio_device {struct virtio_fs* priv; TYPE_1__* config; } ;
struct TYPE_2__ {int (* reset ) (struct virtio_device*) ;} ;


 int list_del_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct virtio_device*) ;
 int virtio_fs_cleanup_vqs (struct virtio_device*,struct virtio_fs*) ;
 int virtio_fs_drain_all_queues (struct virtio_fs*) ;
 int virtio_fs_mutex ;
 int virtio_fs_put (struct virtio_fs*) ;
 int virtio_fs_stop_all_queues (struct virtio_fs*) ;

__attribute__((used)) static void virtio_fs_remove(struct virtio_device *vdev)
{
 struct virtio_fs *fs = vdev->priv;

 mutex_lock(&virtio_fs_mutex);

 list_del_init(&fs->list);
 virtio_fs_stop_all_queues(fs);
 virtio_fs_drain_all_queues(fs);
 vdev->config->reset(vdev);
 virtio_fs_cleanup_vqs(vdev, fs);

 vdev->priv = ((void*)0);

 virtio_fs_put(fs);
 mutex_unlock(&virtio_fs_mutex);
}
