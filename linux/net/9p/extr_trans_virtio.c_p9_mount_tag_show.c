
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_device {struct virtio_chan* priv; } ;
struct virtio_chan {int tag; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct virtio_device* dev_to_virtio (struct device*) ;
 int memcpy (char*,int ,int) ;
 int strlen (int ) ;

__attribute__((used)) static ssize_t p9_mount_tag_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct virtio_chan *chan;
 struct virtio_device *vdev;
 int tag_len;

 vdev = dev_to_virtio(dev);
 chan = vdev->priv;
 tag_len = strlen(chan->tag);

 memcpy(buf, chan->tag, tag_len + 1);

 return tag_len + 1;
}
