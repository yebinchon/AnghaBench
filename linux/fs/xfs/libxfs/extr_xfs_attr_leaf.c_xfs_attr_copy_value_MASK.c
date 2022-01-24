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
struct xfs_da_args {int flags; int valuelen; int op_flags; int /*<<< orphan*/  value; scalar_t__ rmtblkno; } ;

/* Variables and functions */
 int ATTR_KERNOVAL ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ERANGE ; 
 int XFS_DA_OP_ALLOCVAL ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int FUNC2 (struct xfs_da_args*) ; 

__attribute__((used)) static int
FUNC3(
	struct xfs_da_args	*args,
	unsigned char		*value,
	int			valuelen)
{
	/*
	 * No copy if all we have to do is get the length
	 */
	if (args->flags & ATTR_KERNOVAL) {
		args->valuelen = valuelen;
		return 0;
	}

	/*
	 * No copy if the length of the existing buffer is too small
	 */
	if (args->valuelen < valuelen) {
		args->valuelen = valuelen;
		return -ERANGE;
	}

	if (args->op_flags & XFS_DA_OP_ALLOCVAL) {
		args->value = FUNC0(valuelen, 0);
		if (!args->value)
			return -ENOMEM;
	}
	args->valuelen = valuelen;

	/* remote block xattr requires IO for copy-in */
	if (args->rmtblkno)
		return FUNC2(args);

	/*
	 * This is to prevent a GCC warning because the remote xattr case
	 * doesn't have a value to pass in. In that case, we never reach here,
	 * but GCC can't work that out and so throws a "passing NULL to
	 * memcpy" warning.
	 */
	if (!value)
		return -EINVAL;
	FUNC1(args->value, value, valuelen);
	return 0;
}