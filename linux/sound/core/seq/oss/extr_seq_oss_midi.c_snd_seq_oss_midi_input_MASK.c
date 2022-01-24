#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  port; int /*<<< orphan*/  client; } ;
struct snd_seq_event {TYPE_1__ source; } ;
struct seq_oss_midi {int opened; int /*<<< orphan*/  use_lock; int /*<<< orphan*/  seq_device; } ;
struct seq_oss_devinfo {scalar_t__ seq_mode; int /*<<< orphan*/ * readq; } ;

/* Variables and functions */
 int PERM_READ ; 
 scalar_t__ SNDRV_SEQ_OSS_MODE_MUSIC ; 
 struct seq_oss_midi* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct seq_oss_devinfo*,struct snd_seq_event*,struct seq_oss_midi*) ; 
 int FUNC2 (struct seq_oss_devinfo*,struct snd_seq_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4(struct snd_seq_event *ev, int direct, void *private_data)
{
	struct seq_oss_devinfo *dp = (struct seq_oss_devinfo *)private_data;
	struct seq_oss_midi *mdev;
	int rc;

	if (dp->readq == NULL)
		return 0;
	if ((mdev = FUNC0(ev->source.client, ev->source.port)) == NULL)
		return 0;
	if (! (mdev->opened & PERM_READ)) {
		FUNC3(&mdev->use_lock);
		return 0;
	}

	if (dp->seq_mode == SNDRV_SEQ_OSS_MODE_MUSIC)
		rc = FUNC2(dp, ev, mdev->seq_device);
	else
		rc = FUNC1(dp, ev, mdev);

	FUNC3(&mdev->use_lock);
	return rc;
}