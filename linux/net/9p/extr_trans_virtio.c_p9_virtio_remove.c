
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int kobj; } ;
struct virtio_device {TYPE_2__ dev; TYPE_1__* config; struct virtio_chan* priv; } ;
struct virtio_chan {struct virtio_chan* vc_wq; struct virtio_chan* tag; scalar_t__ inuse; int chan_list; } ;
struct TYPE_6__ {int attr; } ;
struct TYPE_4__ {int (* del_vqs ) (struct virtio_device*) ;int (* reset ) (struct virtio_device*) ;} ;


 int HZ ;
 int KOBJ_CHANGE ;
 TYPE_3__ dev_attr_mount_tag ;
 int dev_emerg (TYPE_2__*,char*) ;
 unsigned long jiffies ;
 int kfree (struct virtio_chan*) ;
 int kobject_uevent (int *,int ) ;
 int list_del (int *) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct virtio_device*) ;
 int stub2 (struct virtio_device*) ;
 int sysfs_remove_file (int *,int *) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int virtio_9p_lock ;

__attribute__((used)) static void p9_virtio_remove(struct virtio_device *vdev)
{
 struct virtio_chan *chan = vdev->priv;
 unsigned long warning_time;

 mutex_lock(&virtio_9p_lock);


 list_del(&chan->chan_list);
 warning_time = jiffies;


 while (chan->inuse) {
  mutex_unlock(&virtio_9p_lock);
  msleep(250);
  if (time_after(jiffies, warning_time + 10 * HZ)) {
   dev_emerg(&vdev->dev,
      "p9_virtio_remove: waiting for device in use.\n");
   warning_time = jiffies;
  }
  mutex_lock(&virtio_9p_lock);
 }

 mutex_unlock(&virtio_9p_lock);

 vdev->config->reset(vdev);
 vdev->config->del_vqs(vdev);

 sysfs_remove_file(&(vdev->dev.kobj), &dev_attr_mount_tag.attr);
 kobject_uevent(&(vdev->dev.kobj), KOBJ_CHANGE);
 kfree(chan->tag);
 kfree(chan->vc_wq);
 kfree(chan);

}
