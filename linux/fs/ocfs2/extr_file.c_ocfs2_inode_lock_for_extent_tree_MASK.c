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
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ip_alloc_sem; } ;

/* Variables and functions */
 int EAGAIN ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct inode*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int) ; 
 int FUNC8 (struct inode*,struct buffer_head**,int) ; 

__attribute__((used)) static int FUNC9(struct inode *inode,
					    struct buffer_head **di_bh,
					    int meta_level,
					    int overwrite_io,
					    int write_sem,
					    int wait)
{
	int ret = 0;

	if (wait)
		ret = FUNC6(inode, NULL, meta_level);
	else
		ret = FUNC8(inode,
			overwrite_io ? NULL : di_bh, meta_level);
	if (ret < 0)
		goto out;

	if (wait) {
		if (write_sem)
			FUNC4(&FUNC0(inode)->ip_alloc_sem);
		else
			FUNC2(&FUNC0(inode)->ip_alloc_sem);
	} else {
		if (write_sem)
			ret = FUNC5(&FUNC0(inode)->ip_alloc_sem);
		else
			ret = FUNC3(&FUNC0(inode)->ip_alloc_sem);

		if (!ret) {
			ret = -EAGAIN;
			goto out_unlock;
		}
	}

	return ret;

out_unlock:
	FUNC1(*di_bh);
	FUNC7(inode, meta_level);
out:
	return ret;
}