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
struct ocfs2_lock_holder {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ip_xattr_sem; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct inode*,struct buffer_head**,int /*<<< orphan*/ ,struct ocfs2_lock_holder*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ ,struct ocfs2_lock_holder*,int) ; 
 int FUNC6 (struct inode*,struct buffer_head*,int,char const*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct inode *inode,
			   int name_index,
			   const char *name,
			   void *buffer,
			   size_t buffer_size)
{
	int ret, had_lock;
	struct buffer_head *di_bh = NULL;
	struct ocfs2_lock_holder oh;

	had_lock = FUNC4(inode, &di_bh, 0, &oh);
	if (had_lock < 0) {
		FUNC3(had_lock);
		return had_lock;
	}
	FUNC2(&FUNC0(inode)->ip_xattr_sem);
	ret = FUNC6(inode, di_bh, name_index,
				     name, buffer, buffer_size);
	FUNC7(&FUNC0(inode)->ip_xattr_sem);

	FUNC5(inode, 0, &oh, had_lock);

	FUNC1(di_bh);

	return ret;
}