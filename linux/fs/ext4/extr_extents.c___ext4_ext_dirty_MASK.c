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
struct ext4_ext_path {scalar_t__ p_bh; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {int /*<<< orphan*/  i_data_sem; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char const*,unsigned int,int /*<<< orphan*/ *,struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(const char *where, unsigned int line, handle_t *handle,
		     struct inode *inode, struct ext4_ext_path *path)
{
	int err;

	FUNC1(!FUNC6(&FUNC0(inode)->i_data_sem));
	if (path->p_bh) {
		FUNC3(inode, FUNC5(path->p_bh));
		/* path points to block */
		err = FUNC2(where, line, handle,
						   inode, path->p_bh);
	} else {
		/* path points to leaf/index in inode body */
		err = FUNC4(handle, inode);
	}
	return err;
}