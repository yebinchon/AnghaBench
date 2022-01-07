
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtio_fs {int dummy; } ;
struct virtio_device {TYPE_1__* config; } ;
struct TYPE_2__ {int (* del_vqs ) (struct virtio_device*) ;} ;


 int stub1 (struct virtio_device*) ;

__attribute__((used)) static void virtio_fs_cleanup_vqs(struct virtio_device *vdev,
      struct virtio_fs *fs)
{
 vdev->config->del_vqs(vdev);
}
