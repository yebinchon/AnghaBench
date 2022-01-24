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
struct snapshot_handle {int dummy; } ;
struct snapshot_data {int swap; int mode; int free_bitmaps; int frozen; int ready; int platform_support; int /*<<< orphan*/  handle; } ;
struct inode {int dummy; } ;
struct file {int f_flags; struct snapshot_data* private_data; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOSYS ; 
 int EPERM ; 
 int O_ACCMODE ; 
 int O_RDONLY ; 
 int O_RDWR ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  PM_HIBERNATION_PREPARE ; 
 int /*<<< orphan*/  PM_POST_HIBERNATION ; 
 int /*<<< orphan*/  PM_POST_RESTORE ; 
 int /*<<< orphan*/  PM_RESTORE_PREPARE ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  snapshot_device_available ; 
 struct snapshot_data snapshot_state ; 
 int FUNC8 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ swsusp_resume_device ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static int FUNC11(struct inode *inode, struct file *filp)
{
	struct snapshot_data *data;
	int error, nr_calls = 0;

	if (!FUNC4())
		return -EPERM;

	FUNC5();

	if (!FUNC1(&snapshot_device_available, -1, 0)) {
		error = -EBUSY;
		goto Unlock;
	}

	if ((filp->f_flags & O_ACCMODE) == O_RDWR) {
		FUNC2(&snapshot_device_available);
		error = -ENOSYS;
		goto Unlock;
	}
	FUNC7(inode, filp);
	data = &snapshot_state;
	filp->private_data = data;
	FUNC6(&data->handle, 0, sizeof(struct snapshot_handle));
	if ((filp->f_flags & O_ACCMODE) == O_RDONLY) {
		/* Hibernating.  The image device should be accessible. */
		data->swap = swsusp_resume_device ?
			FUNC8(swsusp_resume_device, 0, NULL) : -1;
		data->mode = O_RDONLY;
		data->free_bitmaps = false;
		error = FUNC0(PM_HIBERNATION_PREPARE, -1, &nr_calls);
		if (error)
			FUNC0(PM_POST_HIBERNATION, --nr_calls, NULL);
	} else {
		/*
		 * Resuming.  We may need to wait for the image device to
		 * appear.
		 */
		FUNC10();

		data->swap = -1;
		data->mode = O_WRONLY;
		error = FUNC0(PM_RESTORE_PREPARE, -1, &nr_calls);
		if (!error) {
			error = FUNC3();
			data->free_bitmaps = !error;
		} else
			nr_calls--;

		if (error)
			FUNC0(PM_POST_RESTORE, nr_calls, NULL);
	}
	if (error)
		FUNC2(&snapshot_device_available);

	data->frozen = false;
	data->ready = false;
	data->platform_support = false;

 Unlock:
	FUNC9();

	return error;
}