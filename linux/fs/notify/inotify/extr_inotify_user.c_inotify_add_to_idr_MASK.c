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
struct inotify_inode_mark {int wd; int /*<<< orphan*/  fsn_mark; } ;
struct idr {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GFP_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct idr*,struct inotify_inode_mark*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct idr *idr, spinlock_t *idr_lock,
			      struct inotify_inode_mark *i_mark)
{
	int ret;

	FUNC2(GFP_KERNEL);
	FUNC4(idr_lock);

	ret = FUNC1(idr, i_mark, 1, 0, GFP_NOWAIT);
	if (ret >= 0) {
		/* we added the mark to the idr, take a reference */
		i_mark->wd = ret;
		FUNC0(&i_mark->fsn_mark);
	}

	FUNC5(idr_lock);
	FUNC3();
	return ret < 0 ? ret : 0;
}