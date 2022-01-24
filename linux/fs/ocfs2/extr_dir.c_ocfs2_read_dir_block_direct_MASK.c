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
typedef  int /*<<< orphan*/  u64 ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct inode*,struct buffer_head*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buffer_head**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  ocfs2_validate_dir_block ; 

__attribute__((used)) static int FUNC6(struct inode *dir, u64 phys,
				       struct buffer_head **bh)
{
	int ret;
	struct buffer_head *tmp = *bh;

	ret = FUNC4(FUNC0(dir), phys, &tmp,
			       ocfs2_validate_dir_block);
	if (ret) {
		FUNC2(ret);
		goto out;
	}

	if (FUNC5(dir)) {
		ret = FUNC3(dir, tmp);
		if (ret) {
			if (!*bh)
				FUNC1(tmp);
			FUNC2(ret);
			goto out;
		}
	}

	if (!ret && !*bh)
		*bh = tmp;
out:
	return ret;
}