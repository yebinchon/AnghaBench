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
struct inode {int i_size; } ;
struct ext4_iloc {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {int i_inline_size; int i_disksize; } ;

/* Variables and functions */
 int ENOSPC ; 
 int FUNC0 (int) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int EXT4_MIN_INLINE_DATA_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,struct ext4_iloc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct inode*,int) ; 
 int FUNC5 (struct inode*,struct ext4_iloc*) ; 

__attribute__((used)) static int FUNC6(handle_t *handle, struct inode *dir,
				  struct ext4_iloc *iloc)
{
	int ret;
	int old_size = FUNC1(dir)->i_inline_size - EXT4_MIN_INLINE_DATA_SIZE;
	int new_size = FUNC5(dir, iloc);

	if (new_size - old_size <= FUNC0(1))
		return -ENOSPC;

	ret = FUNC4(handle, dir,
				      new_size + EXT4_MIN_INLINE_DATA_SIZE);
	if (ret)
		return ret;

	FUNC3(FUNC2(dir, iloc), old_size,
			     FUNC1(dir)->i_inline_size -
						EXT4_MIN_INLINE_DATA_SIZE);
	dir->i_size = FUNC1(dir)->i_disksize = FUNC1(dir)->i_inline_size;
	return 0;
}