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
typedef  scalar_t__ u64 ;
typedef  size_t u32 ;
struct inode {TYPE_1__* i_sb; } ;
struct fsverity_descriptor_location {scalar_t__ version; int /*<<< orphan*/  pos; int /*<<< orphan*/  size; } ;
typedef  int /*<<< orphan*/  dloc ;
struct TYPE_2__ {scalar_t__ s_maxbytes; } ;

/* Variables and functions */
 int EFSCORRUPTED ; 
 int EINVAL ; 
 int ERANGE ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  F2FS_XATTR_INDEX_VERITY ; 
 int /*<<< orphan*/  F2FS_XATTR_NAME_VERITY ; 
 size_t INT_MAX ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fsverity_descriptor_location*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct inode*,void*,size_t,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct inode *inode, void *buf,
				      size_t buf_size)
{
	struct fsverity_descriptor_location dloc;
	int res;
	u32 size;
	u64 pos;

	/* Get the descriptor location */
	res = FUNC2(inode, F2FS_XATTR_INDEX_VERITY,
			    F2FS_XATTR_NAME_VERITY, &dloc, sizeof(dloc), NULL);
	if (res < 0 && res != -ERANGE)
		return res;
	if (res != sizeof(dloc) || dloc.version != FUNC1(1)) {
		FUNC4(FUNC0(inode), "unknown verity xattr format");
		return -EINVAL;
	}
	size = FUNC5(dloc.size);
	pos = FUNC6(dloc.pos);

	/* Get the descriptor */
	if (pos + size < pos || pos + size > inode->i_sb->s_maxbytes ||
	    pos < FUNC3(inode) || size > INT_MAX) {
		FUNC4(FUNC0(inode), "invalid verity xattr");
		return -EFSCORRUPTED;
	}
	if (buf_size) {
		if (size > buf_size)
			return -ERANGE;
		res = FUNC7(inode, buf, size, pos);
		if (res)
			return res;
	}
	return size;
}