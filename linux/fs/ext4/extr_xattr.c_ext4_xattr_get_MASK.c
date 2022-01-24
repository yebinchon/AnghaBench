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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_2__ {int /*<<< orphan*/  xattr_sem; } ;

/* Variables and functions */
 int EIO ; 
 int ENODATA ; 
 int ERANGE ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct inode*,int,char const*,void*,size_t) ; 
 int FUNC5 (struct inode*,int,char const*,void*,size_t) ; 
 int FUNC6 (char const*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int
FUNC9(struct inode *inode, int name_index, const char *name,
	       void *buffer, size_t buffer_size)
{
	int error;

	if (FUNC7(FUNC3(FUNC1(inode->i_sb))))
		return -EIO;

	if (FUNC6(name) > 255)
		return -ERANGE;

	FUNC2(&FUNC0(inode)->xattr_sem);
	error = FUNC5(inode, name_index, name, buffer,
				     buffer_size);
	if (error == -ENODATA)
		error = FUNC4(inode, name_index, name, buffer,
					     buffer_size);
	FUNC8(&FUNC0(inode)->xattr_sem);
	return error;
}