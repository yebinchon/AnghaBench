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
struct nilfs_sufile_info {scalar_t__ allocmax; scalar_t__ allocmin; } ;
struct inode {int dummy; } ;
typedef  scalar_t__ __u64 ;
struct TYPE_2__ {int /*<<< orphan*/  mi_sem; } ;

/* Variables and functions */
 int ERANGE ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 struct nilfs_sufile_info* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct inode *sufile, __u64 start, __u64 end)
{
	struct nilfs_sufile_info *sui = FUNC1(sufile);
	__u64 nsegs;
	int ret = -ERANGE;

	FUNC2(&FUNC0(sufile)->mi_sem);
	nsegs = FUNC3(sufile);

	if (start <= end && end < nsegs) {
		sui->allocmin = start;
		sui->allocmax = end;
		ret = 0;
	}
	FUNC4(&FUNC0(sufile)->mi_sem);
	return ret;
}