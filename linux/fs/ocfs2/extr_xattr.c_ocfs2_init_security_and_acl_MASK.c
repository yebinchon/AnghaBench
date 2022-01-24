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
struct qstr {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct inode*,struct inode*,int /*<<< orphan*/ *,struct buffer_head*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct inode*,struct inode*,struct qstr const*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct inode*,struct buffer_head**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ ) ; 

int FUNC6(struct inode *dir,
				struct inode *inode,
				const struct qstr *qstr)
{
	int ret = 0;
	struct buffer_head *dir_bh = NULL;

	ret = FUNC3(inode, dir, qstr, NULL);
	if (ret) {
		FUNC1(ret);
		goto leave;
	}

	ret = FUNC4(dir, &dir_bh, 0);
	if (ret) {
		FUNC1(ret);
		goto leave;
	}
	ret = FUNC2(NULL, inode, dir, NULL, dir_bh, NULL, NULL);
	if (ret)
		FUNC1(ret);

	FUNC5(dir, 0);
	FUNC0(dir_bh);
leave:
	return ret;
}