
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtio_fs {int refcount; } ;
struct virtio_device {struct virtio_fs* priv; TYPE_1__* config; } ;
struct TYPE_2__ {int (* reset ) (struct virtio_device*) ;} ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct virtio_fs*) ;
 int kref_init (int *) ;
 struct virtio_fs* kzalloc (int,int ) ;
 int stub1 (struct virtio_device*) ;
 int virtio_device_ready (struct virtio_device*) ;
 int virtio_fs_add_instance (struct virtio_fs*) ;
 int virtio_fs_cleanup_vqs (struct virtio_device*,struct virtio_fs*) ;
 int virtio_fs_read_tag (struct virtio_device*,struct virtio_fs*) ;
 int virtio_fs_setup_vqs (struct virtio_device*,struct virtio_fs*) ;

__attribute__((used)) static int virtio_fs_probe(struct virtio_device *vdev)
{
 struct virtio_fs *fs;
 int ret;

 fs = kzalloc(sizeof(*fs), GFP_KERNEL);
 if (!fs)
  return -ENOMEM;
 kref_init(&fs->refcount);
 vdev->priv = fs;

 ret = virtio_fs_read_tag(vdev, fs);
 if (ret < 0)
  goto out;

 ret = virtio_fs_setup_vqs(vdev, fs);
 if (ret < 0)
  goto out;






 virtio_device_ready(vdev);

 ret = virtio_fs_add_instance(fs);
 if (ret < 0)
  goto out_vqs;

 return 0;

out_vqs:
 vdev->config->reset(vdev);
 virtio_fs_cleanup_vqs(vdev, fs);

out:
 vdev->priv = ((void*)0);
 kfree(fs);
 return ret;
}
