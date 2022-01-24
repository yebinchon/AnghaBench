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
struct snapshot_data {scalar_t__ mode; scalar_t__ free_bitmaps; scalar_t__ frozen; int /*<<< orphan*/  swap; } ;
struct inode {int dummy; } ;
struct file {struct snapshot_data* private_data; } ;

/* Variables and functions */
 scalar_t__ O_RDONLY ; 
 int /*<<< orphan*/  PM_POST_HIBERNATION ; 
 int /*<<< orphan*/  PM_POST_RESTORE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  snapshot_device_available ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static int FUNC9(struct inode *inode, struct file *filp)
{
	struct snapshot_data *data;

	FUNC3();

	FUNC6();
	data = filp->private_data;
	FUNC1(data->swap);
	if (data->frozen) {
		FUNC5();
		FUNC2();
		FUNC7();
	} else if (data->free_bitmaps) {
		FUNC2();
	}
	FUNC4(data->mode == O_RDONLY ?
			PM_POST_HIBERNATION : PM_POST_RESTORE);
	FUNC0(&snapshot_device_available);

	FUNC8();

	return 0;
}