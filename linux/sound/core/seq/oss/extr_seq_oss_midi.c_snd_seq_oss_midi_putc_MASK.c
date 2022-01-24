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
struct snd_seq_event {int dummy; } ;
struct seq_oss_midi {int /*<<< orphan*/  use_lock; int /*<<< orphan*/  port; int /*<<< orphan*/  client; int /*<<< orphan*/  coder; } ;
struct seq_oss_devinfo {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 struct seq_oss_midi* FUNC0 (struct seq_oss_devinfo*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,unsigned char,struct snd_seq_event*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_oss_devinfo*,struct snd_seq_event*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4(struct seq_oss_devinfo *dp, int dev, unsigned char c, struct snd_seq_event *ev)
{
	struct seq_oss_midi *mdev;

	if ((mdev = FUNC0(dp, dev)) == NULL)
		return -ENODEV;
	if (FUNC1(mdev->coder, c, ev)) {
		FUNC2(dp, ev, mdev->client, mdev->port);
		FUNC3(&mdev->use_lock);
		return 0;
	}
	FUNC3(&mdev->use_lock);
	return -EINVAL;
}