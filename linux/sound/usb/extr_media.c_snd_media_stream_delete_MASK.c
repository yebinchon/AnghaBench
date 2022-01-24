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
struct snd_usb_substream {struct media_ctl* media_ctl; } ;
struct media_device {int /*<<< orphan*/  devnode; } ;
struct media_ctl {int /*<<< orphan*/  media_entity; int /*<<< orphan*/  intf_devnode; struct media_device* media_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct media_ctl*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct snd_usb_substream *subs)
{
	struct media_ctl *mctl = subs->media_ctl;

	if (mctl) {
		struct media_device *mdev;

		mdev = mctl->media_dev;
		if (mdev && FUNC2(mdev->devnode)) {
			FUNC3(mctl->intf_devnode);
			FUNC1(&mctl->media_entity);
			FUNC4(&mctl->media_entity);
		}
		FUNC0(mctl);
		subs->media_ctl = NULL;
	}
}