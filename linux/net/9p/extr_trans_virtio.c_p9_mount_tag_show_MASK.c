#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct virtio_device {struct virtio_chan* priv; } ;
struct virtio_chan {int /*<<< orphan*/  tag; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 struct virtio_device* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
				struct device_attribute *attr, char *buf)
{
	struct virtio_chan *chan;
	struct virtio_device *vdev;
	int tag_len;

	vdev = FUNC0(dev);
	chan = vdev->priv;
	tag_len = FUNC2(chan->tag);

	FUNC1(buf, chan->tag, tag_len + 1);

	return tag_len + 1;
}