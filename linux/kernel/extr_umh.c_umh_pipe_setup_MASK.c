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
struct umh_info {struct file* pipe_from_umh; struct file* pipe_to_umh; } ;
struct subprocess_info {struct umh_info* data; } ;
struct file {int dummy; } ;
struct cred {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct file**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct file*) ; 
 int FUNC2 (int,struct file*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct subprocess_info *info, struct cred *new)
{
	struct umh_info *umh_info = info->data;
	struct file *from_umh[2];
	struct file *to_umh[2];
	int err;

	/* create pipe to send data to umh */
	err = FUNC0(to_umh, 0);
	if (err)
		return err;
	err = FUNC2(0, to_umh[0], 0);
	FUNC1(to_umh[0]);
	if (err < 0) {
		FUNC1(to_umh[1]);
		return err;
	}

	/* create pipe to receive data from umh */
	err = FUNC0(from_umh, 0);
	if (err) {
		FUNC1(to_umh[1]);
		FUNC2(0, NULL, 0);
		return err;
	}
	err = FUNC2(1, from_umh[1], 0);
	FUNC1(from_umh[1]);
	if (err < 0) {
		FUNC1(to_umh[1]);
		FUNC2(0, NULL, 0);
		FUNC1(from_umh[0]);
		return err;
	}

	umh_info->pipe_to_umh = to_umh[1];
	umh_info->pipe_from_umh = from_umh[0];
	return 0;
}