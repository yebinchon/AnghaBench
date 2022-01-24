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
struct inode {int dummy; } ;

/* Variables and functions */
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  I_MUTEX_NONDIR2 ; 
 int FUNC0 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,struct inode*) ; 

__attribute__((used)) static int
FUNC5(
	struct inode		*src,
	struct inode		*dest)
{
	int			error;

	if (src > dest)
		FUNC4(src, dest);

retry:
	/* Wait to break both inodes' layouts before we start locking. */
	error = FUNC0(src, true);
	if (error)
		return error;
	if (src != dest) {
		error = FUNC0(dest, true);
		if (error)
			return error;
	}

	/* Lock one inode and make sure nobody got in and leased it. */
	FUNC1(src);
	error = FUNC0(src, false);
	if (error) {
		FUNC3(src);
		if (error == -EWOULDBLOCK)
			goto retry;
		return error;
	}

	if (src == dest)
		return 0;

	/* Lock the other inode and make sure nobody got in and leased it. */
	FUNC2(dest, I_MUTEX_NONDIR2);
	error = FUNC0(dest, false);
	if (error) {
		FUNC3(src);
		FUNC3(dest);
		if (error == -EWOULDBLOCK)
			goto retry;
		return error;
	}

	return 0;
}