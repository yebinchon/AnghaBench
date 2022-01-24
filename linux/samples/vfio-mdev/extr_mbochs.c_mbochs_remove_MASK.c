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
struct mdev_state {struct mdev_state* vconfig; struct mdev_state* pages; TYPE_1__* type; } ;
struct mdev_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ mbytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mdev_state*) ; 
 int /*<<< orphan*/  mbochs_used_mbytes ; 
 struct mdev_state* FUNC1 (struct mdev_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct mdev_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct mdev_device *mdev)
{
	struct mdev_state *mdev_state = FUNC1(mdev);

	mbochs_used_mbytes -= mdev_state->type->mbytes;
	FUNC2(mdev, NULL);
	FUNC0(mdev_state->pages);
	FUNC0(mdev_state->vconfig);
	FUNC0(mdev_state);
	return 0;
}