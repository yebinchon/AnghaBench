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
struct umh_info {int /*<<< orphan*/  list; } ;
struct subprocess_info {int dummy; } ;
struct file {int dummy; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct file*) ; 
 int FUNC1 (struct file*) ; 
 int /*<<< orphan*/  UMH_WAIT_EXEC ; 
 int FUNC2 (struct subprocess_info*,int /*<<< orphan*/ ) ; 
 struct subprocess_info* FUNC3 (struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct umh_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct file*) ; 
 size_t FUNC5 (struct file*,void*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct file* FUNC9 (char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  umh_clean_and_save_pid ; 
 int /*<<< orphan*/  umh_list ; 
 int /*<<< orphan*/  umh_list_lock ; 
 int /*<<< orphan*/  umh_pipe_setup ; 

int FUNC10(void *data, size_t len, struct umh_info *info)
{
	struct subprocess_info *sub_info;
	struct file *file;
	ssize_t written;
	loff_t pos = 0;
	int err;

	file = FUNC9("", len, 0);
	if (FUNC0(file))
		return FUNC1(file);

	written = FUNC5(file, data, len, &pos);
	if (written != len) {
		err = written;
		if (err >= 0)
			err = -ENOMEM;
		goto out;
	}

	err = -ENOMEM;
	sub_info = FUNC3(file, umh_pipe_setup,
						  umh_clean_and_save_pid, info);
	if (!sub_info)
		goto out;

	err = FUNC2(sub_info, UMH_WAIT_EXEC);
	if (!err) {
		FUNC7(&umh_list_lock);
		FUNC6(&info->list, &umh_list);
		FUNC8(&umh_list_lock);
	}
out:
	FUNC4(file);
	return err;
}