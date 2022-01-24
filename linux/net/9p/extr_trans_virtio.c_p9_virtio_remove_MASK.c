#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  kobj; } ;
struct virtio_device {TYPE_2__ dev; TYPE_1__* config; struct virtio_chan* priv; } ;
struct virtio_chan {struct virtio_chan* vc_wq; struct virtio_chan* tag; scalar_t__ inuse; int /*<<< orphan*/  chan_list; } ;
struct TYPE_6__ {int /*<<< orphan*/  attr; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* del_vqs ) (struct virtio_device*) ;int /*<<< orphan*/  (* reset ) (struct virtio_device*) ;} ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  KOBJ_CHANGE ; 
 TYPE_3__ dev_attr_mount_tag ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct virtio_chan*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct virtio_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct virtio_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  virtio_9p_lock ; 

__attribute__((used)) static void FUNC11(struct virtio_device *vdev)
{
	struct virtio_chan *chan = vdev->priv;
	unsigned long warning_time;

	FUNC5(&virtio_9p_lock);

	/* Remove self from list so we don't get new users. */
	FUNC3(&chan->chan_list);
	warning_time = jiffies;

	/* Wait for existing users to close. */
	while (chan->inuse) {
		FUNC6(&virtio_9p_lock);
		FUNC4(250);
		if (FUNC10(jiffies, warning_time + 10 * HZ)) {
			FUNC0(&vdev->dev,
				  "p9_virtio_remove: waiting for device in use.\n");
			warning_time = jiffies;
		}
		FUNC5(&virtio_9p_lock);
	}

	FUNC6(&virtio_9p_lock);

	vdev->config->reset(vdev);
	vdev->config->del_vqs(vdev);

	FUNC9(&(vdev->dev.kobj), &dev_attr_mount_tag.attr);
	FUNC2(&(vdev->dev.kobj), KOBJ_CHANGE);
	FUNC1(chan->tag);
	FUNC1(chan->vc_wq);
	FUNC1(chan);

}