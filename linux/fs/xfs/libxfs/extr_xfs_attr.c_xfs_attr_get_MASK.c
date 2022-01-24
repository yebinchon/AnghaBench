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
typedef  int /*<<< orphan*/  uint ;
struct xfs_inode {int /*<<< orphan*/  i_mount; } ;
struct xfs_da_args {unsigned char* value; int valuelen; int /*<<< orphan*/  op_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ATTR_ALLOC ; 
 int ATTR_KERNOVAL ; 
 int EIO ; 
 int /*<<< orphan*/  XFS_DA_OP_ALLOCVAL ; 
 int /*<<< orphan*/  XFS_DA_OP_OKNOENT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 int FUNC4 (struct xfs_da_args*,struct xfs_inode*,unsigned char const*,int) ; 
 int FUNC5 (struct xfs_inode*,struct xfs_da_args*) ; 
 int /*<<< orphan*/  FUNC6 (struct xfs_inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xs_attr_get ; 

int
FUNC8(
	struct xfs_inode	*ip,
	const unsigned char	*name,
	unsigned char		**value,
	int			*valuelenp,
	int			flags)
{
	struct xfs_da_args	args;
	uint			lock_mode;
	int			error;

	FUNC0((flags & (ATTR_ALLOC | ATTR_KERNOVAL)) || *value);

	FUNC2(ip->i_mount, xs_attr_get);

	if (FUNC1(ip->i_mount))
		return -EIO;

	error = FUNC4(&args, ip, name, flags);
	if (error)
		return error;

	/* Entirely possible to look up a name which doesn't exist */
	args.op_flags = XFS_DA_OP_OKNOENT;
	if (flags & ATTR_ALLOC)
		args.op_flags |= XFS_DA_OP_ALLOCVAL;
	else
		args.value = *value;
	args.valuelen = *valuelenp;

	lock_mode = FUNC6(ip);
	error = FUNC5(ip, &args);
	FUNC7(ip, lock_mode);
	*valuelenp = args.valuelen;

	/* on error, we have to clean up allocated value buffers */
	if (error) {
		if (flags & ATTR_ALLOC) {
			FUNC3(args.value);
			*value = NULL;
		}
		return error;
	}
	*value = args.value;
	return 0;
}