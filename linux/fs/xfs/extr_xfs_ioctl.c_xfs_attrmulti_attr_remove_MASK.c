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
typedef  int /*<<< orphan*/  uint32_t ;
struct inode {int dummy; } ;

/* Variables and functions */
 int EPERM ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,unsigned char*,int /*<<< orphan*/ ) ; 

int
FUNC5(
	struct inode		*inode,
	unsigned char		*name,
	uint32_t		flags)
{
	int			error;

	if (FUNC1(inode) || FUNC0(inode))
		return -EPERM;
	error = FUNC3(FUNC2(inode), name, flags);
	if (!error)
		FUNC4(inode, name, flags);
	return error;
}